FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    username "username"
    password "password"
    password_confirmation "password"
    confirmed_at Date.today
    experience 0
  end
end