require 'faker'

FactoryGirl.define do
   factory :invoice do
     brand_manager Faker::Name.name
     narration Faker::Lorem.word
     amount Faker::Number.number(4)
     customer_name Faker::Name.name
     sequence(:reference) { |n| "CES/OWB/16-17/01 #{n}" }
     invoice_date Faker::Date.backward(14)
    end
   end