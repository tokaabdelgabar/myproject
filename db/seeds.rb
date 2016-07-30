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
blind_1st_app = App.create(:name=> "I'm blind", :category_id => 1)
blind_2nd_app = App.create(:name=> "Not deaf", :category_id => 1)
blind_3rd_app = App.create(:name=> "you know", :category_id => 1)
blind_4th_app = App.create(:name=> "where is it", :category_id => 1)
blind_5th_app = App.create(:name=> "coming from", :category_id => 1)
blind_6th_app = App.create(:name=> "Yes you are right!", :category_id => 1)

sight_1st_app = App.create(:name=> "Can't See", :category_id => 2)
sight_2nd_app = App.create(:name=> "Help me", :category_id => 2)
sight_3rd_app = App.create(:name=> "Wait", :category_id => 2)
sight_4th_app = App.create(:name=> "Are you helping me?", :category_id => 2)
sight_5th_app = App.create(:name=> "Please give me a hand", :category_id => 2)
sight_6th_app = App.create(:name=> "Don't go away!", :category_id => 2)

motorical_1st_app = App.create(:name=> "I'm blind", :category_id => 3)
motorical_2nd_app = App.create(:name=> "Not deaf", :category_id => 3)
motorical_3rd_app = App.create(:name=> "you know", :category_id => 3)
motorical_4th_app = App.create(:name=> "where is it", :category_id => 3)
motorical_5th_app = App.create(:name=> "coming from", :category_id => 3)
motorical_6th_app = App.create(:name=> "Yes you are right!", :category_id => 3)

#learning_1st_app = App.create(:name=> "I'm blind", :category_id => 1)
#learning_2nd_app = App.create(:name=> "Not deaf", :category_id => 1)
#learning_3rd_app = App.create(:name=> "you know", :category_id => 1)
#learning_4th_app = App.create(:name=> "where is it", :category_id => 1)
#learning_5th_app = App.create(:name=> "coming from", :category_id => 1)
#learning_6th_app = App.create(:name=> "Yes you are right!", :category_id => 1)
