class Review < ActiveRecord::Base
	belongs_to :app, required: true
	belongs_to :user, required: true

end
