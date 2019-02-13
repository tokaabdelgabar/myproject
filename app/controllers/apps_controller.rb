class AppsController < ApplicationController
before_action :find_app, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
#before_action :authenticate_user!, only: [:new, :edit]
	
	def index

  	@editor_picks= Pick.first.apps

  	@apps_all= App.all
  	@categories_list= Category.all
  	@operatingsystem_list= Operatingsystem.all
  	if params[:category].blank? && params[:search].blank?
  	elsif !params[:category].blank? && params[:search].blank?
  		@category_id = Category.find_by(name: params[:category]).id
  		@apps_all = App.where(:category_id => @category_id).order("created_at DESC")
  	else
  		@apps_all = App.where("name LIKE ? or searchDescription LIKE ?  or developer LIKE ? or price LIKE ? or app_type LIKE ?","%#{params[:search]}%","%#{params[:search]}%","%#{params[:search]}%","%#{params[:search]}%","%#{params[:search]}%")
  	end		
  	@apps_high = App.joins(:reviews).select("*, AVG(reviews.rating) as average_rating").group("apps.id").order("average_rating DESC")

	end

	def show
	@app = App.find(params[:id])
    @reviews = @app.reviews.paginate(page: params[:page], :per_page => 5)

		if @app.reviews.blank?
			@average_review=0
		elsif @app.reviews.count(:rating) !=0 
			@average_review=@app.reviews.sum(:rating)/@app.reviews.count(:rating) 
		end
	add_breadcrumb "App: #{@app.name}", :app_path
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


