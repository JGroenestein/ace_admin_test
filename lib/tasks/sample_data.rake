namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "JoshuaG",
                 email: "j.groenestein@gmail.com",
                 password: "magictg1",
                 password_confirmation: "magictg1")
    admin.toggle!(:admin)

    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end