class Invoice < ApplicationRecord
  has_many :collections
  validates :customer_name, presence: true
  validates :brand_manager, presence: true
end
