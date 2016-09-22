class AllAppsController < ApplicationController
	add_breadcrumb "Alle Apps", :all_apps_path
	def show
		@categories=Category.all
		@apps_all= App.all	
	end

end
