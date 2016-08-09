class App < ActiveRecord::Base
    belongs_to :user
	belongs_to :category
	has_many :operations
	has_many :operatingsystems, :through => :operations
	has_many :apptranslations
	has_many :languages, :through => :apptranslations
	has_many :reviews
    accepts_nested_attributes_for :operations   
	acts_as_votable
	
	has_attached_file :app_img, :styles => { :app_index => "250x350>", :app_show => "325x475>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :app_img, :content_type => /\Aimage\/.*\Z/
    
    has_attached_file :image1, :styles => { :app_index => "250x350>", :app_show => "325x475>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :image1, :content_type => /\Aimage\/.*\Z/
    
    has_attached_file :image2, :styles => { :app_index => "250x350>", :app_show => "325x475>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :image2, :content_type => /\Aimage\/.*\Z/
    
    has_attached_file :image3, :styles => { :app_index => "250x350>", :app_show => "325x475>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :image3, :content_type => /\Aimage\/.*\Z/
    
    has_attached_file :image4, :styles => { :app_index => "250x350>", :app_show => "325x475>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :image4, :content_type => /\Aimage\/.*\Z/
    
    has_attached_file :image5, :styles => { :app_index => "250x350>", :app_show => "325x475>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :image5, :content_type => /\Aimage\/.*\Z/
    translates :description

    def self.find_by(*args)
        self.where(*args).take
    end
end
