class Pick < ApplicationRecord
	has_many :apps

 def self.find_by(*args)
    self.where(*args).take
  end
end
