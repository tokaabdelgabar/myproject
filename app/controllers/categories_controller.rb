class CategoriesController < ApplicationController
	before_action :find_category, only: [:show, :edit, :update, :destroy]

	def index
		@categories=Category.all
	end

	def new
		@category=Category.new	
	end

	def show
		add_breadcrumb "Kategory: #{@category.name}", :category_path
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
			.eager_load(:reviews)
			.select("apps.name, apps.description ,apps.developer, apps.youtube_link ,apps.created_at,
				apps.updated_at ,apps.user_id ,apps.category_id ,apps.app_img_file_name, apps.app_img_content_type ,apps.app_img_file_size ,
				apps.app_img_updated_at , apps.price_pro ,apps.image1_file_name ,apps.image1_content_type, apps.image1_file_size ,apps.image1_updated_at,
				apps.image2_file_name ,apps.image2_content_type ,apps.image2_file_size ,apps.image2_updated_at, apps.image3_file_name, 
				apps.image3_content_type , apps.image3_file_size ,apps.image3_updated_at ,apps.image4_file_name, 
				apps.image4_content_type, apps.image4_file_size, apps.image4_updated_at, apps.image5_file_name, apps.image5_content_type,
				apps.image5_file_size, apps.image5_updated_at, apps.price, apps.size, apps.app_type, apps.youtube_link,
				apps.image1_alt, apps.image2_alt, apps.image3_alt, apps.image4_alt,apps.image5_alt,
				apps.app_img_alt, apps.youtube_alt, apps.android_link, apps.ios_link, apps.windows_link, 
				avg(reviews.rating) as average, count(*) as total")
			.group("apps.id, reviews.id")
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
