class NotificationsController < ApplicationController
	def index
		@notifications=Notification.all.order("created_at DESC")
	end

	def new
		@notification=Notification.new	
	end

	def show
	end

	def create
		@notification=Notification.new(category_params)
		if @notification.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit	
	end

	def update
		if @notification.update(notification_params)
			redirect_to notification_path(@notification)
		else
			render 'edit'
		end
	end

	def destroy	
	end
end
