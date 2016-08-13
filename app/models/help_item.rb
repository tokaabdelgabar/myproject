class HelpItem < ActiveRecord::Base
	has_attached_file :photo, :style => "height: 30%; width: 30%", :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
