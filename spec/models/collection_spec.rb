require 'rails_helper'

describe Collection do
    it 'is valid with invoice id' do
       expect(FactoryGirl.build(:collection)).to be_valid 
    end
end

describe Collection do
   it 'is invalid without an invoice id' do
      collection = FactoryGirl.build(:collection, invoice_id: nil)
      collection.valid?
      expect(collection.errors[:invoice_id]).to include("can't be blank")
   end
end
