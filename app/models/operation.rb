class Operation < ActiveRecord::Base
	belongs_to :app 
	belongs_to :operatingsystem
end
