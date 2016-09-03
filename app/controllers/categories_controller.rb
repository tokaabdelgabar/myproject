class CategoriesController < ApplicationController
	before_action :find_category, only: [:show, :edit, :update, :destroy]
	def index
		@categories=Category.all
	end

	def new
		@category=Category.new	
	end

	def show
		@page_title = "Category Details"
		@search = App.ransack(params[:q])

		#if params[:language_id].present?
		#filter language
			@lang=App.joins(:apptranslations)
			.where(:category_id => params[:id])
			.merge(Apptranslation.where(:language_id=> params[:language_id]))

		#filter OS
			@os=App.joins(:operations)
			.where(:category_id => params[:id])
			.merge(Operation.where(:operatingsystem_id => params[:operatingsystem_id]) )

		#display Product
			@products = @search
			.result
			.joins(:reviews)
			.select("apps.*, avg(reviews.rating) as average, count(*) as total")
			.group("apps.id")
			.where(:category_id => params[:id])

		#free
			@free=App
			.where(:category_id => params[:id])
			.where(:price => params[:price])

		#redundant, refactor later
			@free_app=App
			.where(:category_id => params[:id])
			.where(:price => '0')
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
