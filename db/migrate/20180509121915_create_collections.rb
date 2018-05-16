class CreateCollections < ActiveRecord::Migration[5.1]
  def change
    create_table :collections do |t|
      t.belongs_to :invoice, index: true, default: 2
      t.integer :amount
      t.string :reference
      t.datetime  :collection_date
      t.timestamps
    end
  end
end
