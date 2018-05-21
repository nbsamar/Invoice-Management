require 'rails_helper'

describe Invoice do
    it 'is valid with brand manager and customer' do
        expect(FactoryGirl.build(:invoice)).to be_valid
    end
end