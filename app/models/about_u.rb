class AboutU < ActiveRecord::Base
	has_attached_file :picture, :styles => { :app_index => "250x350>", :app_show => "325x475>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
end
