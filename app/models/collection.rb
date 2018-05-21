class Collection < ApplicationRecord
  belongs_to :invoice
  validates_presence_of :invoice_id
end
