class CategoriesController < ApplicationController
	before_action :find_category, only: [:show, :edit, :update, :destroy]
	def index
		@categories=Category.all

		#if params[:language]
		#	@products = Language.where(:name => params[:name])
		#else
		#	@products = App.all

		#filter OS
		@os=App.joins(:operations)
		.where(:category_id => params[:id])
		.merge(Operation.where(:operatingsystem_id => params[:operatingsystem_id]) )

		#filter language
    	@lang=App.joins(:apptranslations)
    	.where(:category_id => params[:id])
    	.merge(Apptranslation.where(:language_id=> params[:language_id]))
		#end
	end

	def new
		@category=Category.new	
	end

	def filter
		#filter language
    	@lang=App.joins(:operations).
    	where(:category_id => Category.find(1)).
    	merge(Apptranslation.where(:language_id => params[:language_id]))


    	#filter OS
    	@os=App
    	.joins(:apptranslations)
    	.where(:category_id => params[:id])
    	.merge(Operation.where(:operatingsystem_id => params[:operatingsystem_id]))
	end

	def show
		@page_title = "Category Details"
		@search = App.ransack(params[:q])
    	@products = @search
    	.result
    	.joins(:reviews)
    	.select("apps.*, avg(reviews.rating) as average, count(*) as total")
    	.group("apps.id")
    	.where(:category_id => params[:id])
    end

    def create
    	@category=Category.new(category_params)
    	if @category.save
    		redirect_to root_path
    	else
    		render 'new'
    	end
    end

    def edit	
    end

    def update
    	if @category.update(category_params)
    		redirect_to category_path(@category)
    	else
    		render 'edit'
    	end
    end

    def destroy
    end

    private
    def category_params
    	params.require(:category).permit(:name)
    end

    def find_category
    	@category=Category.find(params[:id])
    end
end
