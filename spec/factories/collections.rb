require 'faker'

FactoryGirl.define do
    factory :collection do
        invoice_id Faker::Number.digit
        amount Faker::Number.number
        sequence(:reference) { |n| "CES/OWB/16-17/01 #{n}" }
        collection_date Faker::Date.backward(14)
    end
end
