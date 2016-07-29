# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#img1 = File.new("#{Rails.root}/app/assets/images/image.jpg")

#App.create!(category_id: "1" , app_img: File.new("#{Rails.root}/app/assets/images/image.jpg"),
  #name: "Be My Eyes", description:"Be My Eyes goal is to improve the lives of the blind by connecting them to a community of online volunteers.",
  #link: "http://www.bemyeyes.org/", developer: "someone", 
  #operation: "abc", price: "free", locale: "en")
User.delete_all
 user = User.new(
      :email                 => "admin@abc.com",
      :password              => "12345678",
      :password_confirmation => "12345678"
  )
  user.save!

Category.delete_all
first_category = Category.create(:name => "Blind")
second_category = Category.create(:name => "Sight" )
fourth_category = Category.create(:name => "Motorical")
fifth_category = Category.create(:name => "Learning" )
sixth_category = Category.create(:name => "Hearing" )

App.delete_all
