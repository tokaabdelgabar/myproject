class PickController < ApplicationController
		def index
		@picks=Pick.all.order("created_at DESC")
	end

	def new
		@pick=Pick.new	
	end

	def show
	end

	def create
		@pick=Pick.new(category_params)
		if @pick.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit	
	end

	def update
		if @pick.update(pick_params)
			redirect_to pick_path(@pick)
		else
			render 'edit'
		end
	end

	def destroy	
	end
end
