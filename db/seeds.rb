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

Review.delete_all
first_review = Review.create(:id => 1, :rating => 5, :comment => "very good", :app_id => 1)
second_review = Review.create(:id => 2, :rating => 4, :comment => "good", :app_id => 2)
third_review = Review.create(:id => 3, :rating => 3, :comment => "average", :app_id => 3)
fourth_review = Review.create(:id => 4, :rating => 2, :comment => "bad", :app_id => 4)
fifth_review = Review.create(:id => 5, :rating => 1, :comment => "very good", :app_id => 5)

sixth_review = Review.create(:id => 6, :rating => 5, :comment => "very good", :app_id => 6)
seventh_review = Review.create(:id => 7, :rating => 4, :comment => "good", :app_id => 7)
eigth_review = Review.create(:id => 8, :rating => 3, :comment => "average", :app_id => 8)
ninth_review = Review.create(:id => 9, :rating => 2, :comment => "bad", :app_id => 9)
tenth_review = Review.create(:id => 10, :rating => 1, :comment => "very good", :app_id => 10)

App.delete_all
#:app_img_file_name => File.open(File.join(Rails.root, 'public', 'stock', 'app1.jpg')
first_app = App.create(:id => 1, :name => "Blind 1", :price => 12, :category_id => 1)
second_app = App.create(:id => 2, :name => "Blind 2", :price => 9, :category_id => 1, :app_img_file_name => "app2.jpg" )
third_app = App.create(:id => 3, :name => "Blind 3", :price => 0, :category_id => 1, :app_img_file_name => "app3.jpg" )
fourth_app = App.create(:id => 4,:name => "Blind 4", :price => 100, :category_id => 1, :app_img_file_name => "app4.jpg" )
fifth_app = App.create(:id => 5,:name => "Blind 5", :price => 99, :category_id => 1, :app_img_file_name => "app5.jpg" )

sixth_app = App.create(:id => 6, :name => "Sight 1", :price => 12, :category_id => 2, :app_img_file_name => "app6.jpg" )
seventh_app = App.create(:id =>7, :name => "Sight 2", :price => 9, :category_id => 2, :app_img_file_name => "app7.jpg" )
eight_app = App.create(:id =>8, :name => "Sight 3", :price => 0, :category_id => 2, :app_img_file_name => "app8.jpg")
ninth_app = App.create(:id =>9,:name => "Sight 4", :price => 100, :category_id => 2, :app_img_file_name => "app9.jpg" )
tenth_app = App.create(:id =>10,:name => "Sight 5", :price => 99, :category_id => 2, :app_img_file_name => "app10.jpg" )