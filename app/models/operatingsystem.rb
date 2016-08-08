class Operatingsystem < ActiveRecord::Base
	has_many :operations
	has_many :apps, :through => :operations
	translates :name
end
