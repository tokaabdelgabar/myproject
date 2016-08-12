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
first_category = Category.create(:name => "Blind", :id => 1)
second_category = Category.create(:name => "Sight", :id => 2 )
fourth_category = Category.create(:name => "Motorical", :id => 3)
fifth_category = Category.create(:name => "Learning", :id => 4 )
sixth_category = Category.create(:name => "Hearing", :id => 5 )

App.delete_all
first_app = App.create(:id => 1, :name => "Blind 1", :price => 12, :category_id => 1)
second_app = App.create(:id => 2, :name => "Blind 2", :price => 9, :category_id => 1 )
third_app = App.create(:id => 3, :name => "Blind 3", :price => 0, :category_id => 1 )
fourth_app = App.create(:id => 4,:name => "Blind 4", :price => 100, :category_id => 1 )

first_app = App.create(:id => 5, :name => "Sight 1", :price => 12, :category_id => 2 )
second_app = App.create(:id =>6, :name => "Sight 2", :price => 9, :category_id => 2 )
third_app = App.create(:id =>7, :name => "Sight 3", :price => 0, :category_id => 2)
fourth_app = App.create(:id =>8,:name => "Sight 4", :price => 100, :category_id => 2 )