class Language < ActiveRecord::Base
	has_many :apptranslations
	has_many :apps, :through => :apptranslations
end
