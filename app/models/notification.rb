class Notification < ActiveRecord::Base
	translates :title, :content 
	has_attached_file :image, :styles => { :notification_index => "250x350", :notification_show => "325x475" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
