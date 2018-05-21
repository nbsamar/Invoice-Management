require 'rails_helper'

describe Invoice do
    it 'is valid with brand manager and customer' do
        expect(FactoryGirl.build(:invoice)).to be_valid
    end
end

describe Invoice do
    it 'is invalid without brand manager and customer' do
        invoice = FactoryGirl.build(:invoice, customer_name: nil)
        invoice.valid?
        expect(invoice.errors[:customer_name]).to include("can't be blank")
    end
end