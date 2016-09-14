class User < ActiveRecord::Base
	has_many :apps
	has_many :reviews, :through => :apps

	#ROLES = %i[admin moderator author banned]
	#attr_accessible :roles

	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable, :confirmable, 
	:recoverable, :rememberable, :trackable

	validates_uniqueness_of  :email, :case_sensitive => false, :allow_blank => true, :if => :email_changed?
    validates_format_of :email, :with  => Devise.email_regexp, :allow_blank => true, :if => :email_changed?
    validates_presence_of :password, :on=>:create
    validates_confirmation_of    :password, :on=>:create
    validates :password_confirmation, :presence =>true, :on=>:create
    validates_length_of    :password, :within => Devise.password_length, :allow_blank => true
 
 #code for getting and setting the list of roles a user belongs to. 
 #This will perform the necessary bitwise operations to translate an array of roles into the integer field.

#def has_role?(role)
 #roles.include?(role)
#end

end
