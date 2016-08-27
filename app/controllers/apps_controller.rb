class AppsController < ApplicationController
before_action :find_app, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
#before_action :authenticate_user!, only: [:new, :edit]
	
	def index

		@apps_all= App.all 
		@categories_list= Category.all
		@operatingsystem_list= Operatingsystem.all

		if params[:category].blank? && params[:search].blank?
		
		elsif !params[:category].blank? && params[:search].blank?
			@category_id = Category.find_by(name: params[:category]).id
			@apps = App.where(:category_id => @category_id).order("created_at DESC")
		else
  			@apps = App.where (["name LIKE ?","%#{params[:search]}%"])
		end		
	end

	def show
		if @app.reviews.blank?
			@average_review=0
		else
			@average_review=@app.reviews.average(:rating).round(2)
		end
	end

	def new
		@app = current_user.apps.build
		@categories = Category.all.map{ |c| [c.name, c.id] }
	end

	def create
		@app=current_user.apps.build(app_params)
		@app.category_id = params[:category_id]

		if @app.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
		@categories = Category.all.map{ |c| [c.name, c.id] }
	end

	def update
		@app.category_id = params[:category_id]
		if @app.update(app_params)
			redirect_to app_path(@app)
		else
			render 'edit'
		end
	end

	def destroy
		@app.destroy
		redirect_to root_path
	end

	def upvote
		@app.upvote_by current_user
		redirect_to :back
	end

	def downvote
		@app.downvote_from current_user
		redirect_to :back
	end

	private

	def app_params
		params.require(:app).permit(:name, :description, :developer, :price, :category_id, :app_img)
	end

	def find_app
		@app=App.find(params[:id])
	end
end


