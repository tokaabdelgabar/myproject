class OperatingsystemController < ApplicationController
	def index
		@operatingsystems=Operatingsystem.all.order("created_at DESC")
	end

	def new
		@operatingsystem=Operatingsystem.new
	end

	def show
	end

	def create
		@operatingsystem=Operatingsystem.new(operatingsystem_params)
		if @operatingsystem.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit	
	end

	def update
		if @operatingsystem.update(operatingsystem_params)
			redirect_to operatingsystem_path(@operatingsystem)
		else
			render 'edit'
		end
	end

	def destroy
	end

	private
	def operatingsystem_params
		params.require(:operatingsystem).permit(:name)
	end

	def find_category
		@operatingsystem=Operatingsystem.find(params[:id])
	end
end
