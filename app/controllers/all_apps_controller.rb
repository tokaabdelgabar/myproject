class AllAppsController < ApplicationController
	def show
		@categories=Category.all
		@apps_all= App.all	
	end

end
