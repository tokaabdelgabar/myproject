class LanguageController < ApplicationController
	def index
		@languages=Language.all.order("created_at DESC")
	end

	def new
		@language=Language.new
	end

	def show
	end

	def create
		@language=Language.new(language_params)
		if @language.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @language.update(language_params)
			redirect_to language_path(@language)
		else
			render 'edit'
		end
	end

	def destroy	
	end

	private
	def language_params
		params.require(:language).permit(:name)
	end

	def find_category
		@language=Language.find(params[:id])
	end
end
