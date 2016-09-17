#img1 = File.new("#{Rails.root}/app/assets/images/image.jpg")

#App.create!(category_id: "1" , app_img: File.new("#{Rails.root}/app/assets/images/image.jpg"),
  #name: "Be My Eyes", description:"Be My Eyes goal is to improve the lives of the blind by connecting them to a community of online volunteers.",
  #link: "http://www.bemyeyes.org/", developer: "someone", 
  #operation: "abc", price: "free", locale: "en")
User.delete_all
user1 = User.create!(:id => 1, :email => "superadmin@abc.com", :password => "12345678", :password_confirmation => "12345678",:username	=> "huihui",:confirmation_token => true, :superadmin => true, :confirmed_at => "2016-08-23 10:15:50", :confirmation_sent_at => "2016-08-23 10:15:40")
user1.save!
user2 = User.create!(:id => 2, :email => "admin@abc.com", :password => "12345678", :password_confirmation => "12345678",:username  => "xiaohui", :admin => true)
user4 = User.create!(:id => 4, :email => "account@abc.com", :password => "12345678", :password_confirmation => "12345678",:username  => "xiaohui", :app_manager => true)
user5 = User.create!(:id => 5, :email => "adminandaccount@abc.com", :password => "12345678", :password_confirmation => "12345678",:username  => "xiaohui", :admin => true, :app_manager => true)
user3 = User.create!(:id => 3, :email => "abc@huihui.com", :password => "12345678", :password_confirmation => "12345678",:username  => "ahhui")

Category.delete_all
first_category = Category.create(:name => "Blind", :id => 1)
second_category = Category.create(:name => "Sight", :id => 2 )
fourth_category = Category.create(:name => "Motorical", :id => 3)
fifth_category = Category.create(:name => "Learning", :id => 4 )
sixth_category = Category.create(:name => "Hearing", :id => 5 )

#category_names = %w(Blind Sight Motorical Learning Hearing)
#categories = category_names.each_with_index.map{|name, i| Category.create!(name: name, i: i+1)}

App.delete_all
#:app_img_file_name => 
#File.open(File.join(  Rails.root, 'public', 'stock', 'app1.jpg')
first_app = App.create(:id => 1, :name => "Blind 1", :price => 12.00, :category_id => 1, :user_id => 1)
second_app = App.create(:id => 2, :name => "Blind 2", :price => 9.00, :category_id => 1, :app_img_file_name => "app2.jpg", :user_id => 1 )
third_app = App.create(:id => 3, :name => "Blind 3", :price => 10.00, :category_id => 1, :app_img_file_name => "app3.jpg" , :user_id => 1)
fourth_app = App.create(:id => 4,:name => "Blind 4", :price => 100.00, :category_id => 1, :app_img_file_name => "app4.jpg" )
fifth_app = App.create(:id => 5,:name => "Blind 5", :price => 99.00, :category_id => 1, :app_img_file_name => "app5.jpg" )
fifth_app = App.create(:id => 11,:name => "Blind 5", :price => 99.00, :category_id => 1, :app_img_file_name => "app5.jpg" )
rep_app = App.create!(:id => 13,:name => "Blind 11", :price => 99.00, :category_id => 1)


sixth_app = App.create(:id => 6, :name => "Sight 1", :price => 12, :category_id => 2, :app_img_file_name => "app6.jpg" )
seventh_app = App.create(:id =>7, :name => "Sight 2", :price => 9, :category_id => 2, :app_img_file_name => "app7.jpg" )
eight_app = App.create(:id =>8, :name => "Sight 3", :price => 0, :category_id => 2, :app_img_file_name => "app8.jpg")
ninth_app = App.create(:id =>9,:name => "Sight 4", :price => 100, :category_id => 2, :app_img_file_name => "app9.jpg" )
tenth_app = App.create(:id =>10,:name => "Sight 5", :price => 99, :category_id => 2, :app_img_file_name => "app10.jpg" )

Review.delete_all

first_review_first_app  = Review.create!(:id => 11, :rating => 5, :comment => "very good", :app_id => 1, :user_id => 1)
second_review_first_app = Review.create!(:id => 12, :rating => 3, :comment => "extremely good", :app_id => 1, :user_id => 2)
third_review_first_app  = Review.create!(:id => 13, :rating => 2, :comment => "sangat bagus", :app_id => 1, :user_id => 3)
#first_review_third_app  = Review.create!(:id => 21, :rating => 4, :comment => "good ge pi", :app_id => 3, :user_id => 1)
second_review_third_app  = Review.create!(:id => 22, :rating => 1, :comment => "good la", :app_id => 3, :user_id => 2)
third_review_third_app   = Review.create!(:id => 23, :rating => 2, :comment => "good wat", :app_id => 3, :user_id => 3)
second_review = Review.create(:id => 3, :rating => 3, :comment => "average", :app_id => 2, :user_id => 1)
fourth_review = Review.create(:id => 4, :rating => 2, :comment => "bad", :app_id => 4, :user_id => 1)
fifth_review = Review.create(:id => 5, :rating => 1, :comment => "very good", :app_id => 5, :user_id => 1)
sexy_review = Review.create(:id => 111, :rating => 1, :comment => "very good", :app_id => 11, :user_id => 1)


sixth_review = Review.create(:id => 6, :rating => 5, :comment => "very good", :app_id => 6, :user_id => 1)
seventh_review = Review.create(:id => 7, :rating => 4, :comment => "good", :app_id => 7, :user_id => 1)
eigth_review = Review.create(:id => 8, :rating => 3, :comment => "average", :app_id => 8, :user_id => 1)
ninth_review = Review.create(:id => 9, :rating => 2, :comment => "bad", :app_id => 9, :user_id => 1)
tenth_review = Review.create(:id => 10, :rating => 1, :comment => "very good", :app_id => 10, :user_id => 1)

Language.delete_all
first_language = Language.create!(:id => 1, :name => "German")
second_language = Language.create!(:id => 2, :name => "English")

Apptranslation.delete_all
german = Apptranslation.create!(:id => 1, :app_id => 1, :language_id => 1)
english = Apptranslation.create!(:id => 2, :app_id => 3, :language_id => 2)

Operatingsystem.delete_all
os_android  = Operatingsystem.create!(:id => 1, :name  => "Android")
os_ios      = Operatingsystem.create!(:id => 2, :name  => "iOS")
os_windows  = Operatingsystem.create!(:id => 3, :name  => "Windows")

Operation.delete_all
op1 = Operation.create!(:id => 1, :app_id => 1, :operatingsystem_id => 1)
op2 = Operation.create!(:id => 2, :app_id => 2, :operatingsystem_id => 2)
op3 = Operation.create!(:id => 3, :app_id => 3, :operatingsystem_id => 3)
op4 = Operation.create!(:id => 5, :app_id => 8, :operatingsystem_id => 3)
