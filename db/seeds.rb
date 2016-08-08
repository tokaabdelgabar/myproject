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
first_app = App.create(:name => "Blind 1", :price => 12, :category_id => 1 )
second_app = App.create(:name => "Blind 2", :price => 9, :category_id => 1 )
third_app = App.create(:name => "Blind 3", :price => 0, :category_id => 1 )
fourth_app = App.create(:name => "Blind 4", :price => 100, :category_id => 1 )

first_app = App.create(:name => "Sight 1", :price => 12, :category_id => 2 )
second_app = App.create(:name => "Sight 2", :price => 9, :category_id => 2 )
third_app = App.create(:name => "Sight 3", :price => 0, :category_id => 2)
fourth_app = App.create(:name => "Sight 4", :price => 100, :category_id => 2 )

