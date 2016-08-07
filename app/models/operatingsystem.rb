class Operatingsystem < ActiveRecord::Base
	has_many :operations
	has_many :apps, :through => :operations
	translates :name
	
	def self.find_by(*args)
    self.where(*args).take
    end
end
