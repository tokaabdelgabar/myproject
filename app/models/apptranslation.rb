class Apptranslation < ActiveRecord::Base
	belongs_to :app 
	belongs_to :language
end
