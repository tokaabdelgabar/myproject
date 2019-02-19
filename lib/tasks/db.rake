namespace :db do
  desc "Drop, create, migrate, and repopulate with sample data"
  task repopulate: [:migrate, :fakeit] do
  puts "Done"
end

  desc "Generate dummy data"
  task fakeit: :environment do
    100.times do
      User.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.free_email,
        username: Faker::Internet.user_name,
        birthday: Faker::Date.birthday(18, 65),
        password: Faker::Internet.password(8)
      )
    end

    20.times do
        App.create!(
            name: Faker::App.name,
            description: Faker::Quote.famous_last_words,
            developer: Faker::App.author,
            price: Faker::Number.decimal(0, 10),
            size: Faker::Number.within(50..500),
            android_link: Faker::Internet.url,
            ios_link: Faker::Internet.url,
            windows_link: Faker::Internet.url,
            youtube_link: Faker::Internet.url,
            youtubeLink: Faker::Internet.url,
            user_id: rand(1..2),
            category_id: rand(1..5),
            pick_id:rand(1..2)
        )
    end 

    70.times do
        Review.create!(
            user_id: rand(2..101),
            app_id: rand(1..10),
            rating: Faker::Number.within(1..5),
            comment: Faker::Lorem.sentence
        )
    end 
end 
end 