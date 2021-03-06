require 'faker'

FactoryGirl.define do
  factory :user do |f|
    f.email { Faker::Internet.email }
    f.password { Faker::Internet.password }
    f.first_name { Faker::Name.first_name }
    f.last_name { Faker::Name.last_name }
    f.birth_date { Faker::Date.between(50.years.ago, 13.years.ago) }
  end
end
