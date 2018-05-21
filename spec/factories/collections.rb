require 'faker'

new_invoice = Invoice.create!(
             brand_manager: "Nayab Samar",
             narration: "SinCosTan",
             amount: 8086,
             customer_name: "Ravi",
             reference: "CES/OWB/16-17/01",
             invoice_date: "02/02/2017 00:00:00"
    )
FactoryGirl.define do
    factory :collection do
        invoice_id new_invoice.id
        amount Faker::Number.number
        sequence(:reference) { |n| "CES/OWB/16-17/01 #{n}" }
        collection_date Faker::Date.backward(14)
    end
end
