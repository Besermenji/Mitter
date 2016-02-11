require 'faker'

FactoryGirl.define do
  factory :meet do
    content { Faker::Lorem.characters(150) }
    token { Faker::Lorem.characters(10) } 
  end
end
