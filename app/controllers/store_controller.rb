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
    #@products = App.order(:price)     
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
    @product = Category.find(params[:id])
    @search = App.ransack(params[:q]).find(params[:id])
    @products = @search.result.joins(:reviews).select("apps.*, avg(reviews.rating) as average, count(*) as total").group("apps.id").where(Category.find(params[:id]))
    @search.build_sort if @search.sorts.empty?
  end

  def blind
      #@name = params[:category_name]
      #@dropdown = Language.ransack(params[:q])
      @search = App.ransack(params[:q])
      #@language = App.ransack(params[:q]).result.joins(:operatingsystems)
      #@products = @search.result.where(:category_id => 1) 
      @products = @search.result.joins(:reviews).select("apps.*, avg(reviews.rating) as average, count(*) as total").group("apps.id").where(:category_id => 1)
      @search.build_sort if @search.sorts.empty?
      @free = App.search(params[:q]).result.joins(:languages)
  end

  def sight
      @search = App.search(params[:q])
      @products = @search.result.where(:category_id => 2) 
  end
end
