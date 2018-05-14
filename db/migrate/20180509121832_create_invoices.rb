class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.string :brand_manager
      t.string :narration
      t.integer :amount
      t.string :customer_name
      t.string :reference
      t.datetime :invoice_date
      t.timestamps
    end
  end
end
