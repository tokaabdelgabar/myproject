class StoreController < ApplicationController  
  def index
  #@products = App.find(params[:id])
    if params[:category_id]
      @products = App.where(:category_id => params[:category_id])
    else
      @products = App.all
    end
    @search = App.search(params[:q])
    @products = @search.result
    @search.build_condition if @search.conditions.empty?
    @search.build_sort if @search.sorts.empty?    
  end

  def free
    @app=App.find(params[:category_id])
    @opp=App.where(price:'0') 
    @free=@app && @opp
  end

  def paid
    @app=App.find(params[:category_id])
    @pai= App.where.not(price: '0') 
    @paid=@app && @paid
  end

  def show
    #@product = Category.find(params[:id])

    @language = Language.all
    @os = Operatingsystem.all

    @search = App.ransack(params[:q])
    #@search = @search.includes(:operatingsystems).where(operatingsystem: {name: params[:q][:operation_name_eq]})
    @products = @search
      .result
      .joins(:reviews)
      .select("apps.*, avg(reviews.rating) as average, count(*) as total")
      .group("apps.id")
      .where(:category_id => params[:id])
    
    @search.build_condition if @search.conditions.empty?
    @search.build_sort if @search.sorts.empty?
  end
end
