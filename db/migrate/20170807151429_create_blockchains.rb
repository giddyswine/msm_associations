class CreateBlockchains < ActiveRecord::Migration[5.0]
  def change
    create_table :blockchains do |t|
      t.integer :salesperson_id
      t.integer :product_id
      t.string :state
      t.string :city
      t.integer :customer_id
      t.integer :company_id
      t.integer :source_id
      t.decimal :price
      t.string :metric
      t.decimal :tons
      t.string :mode
      t.string :terms
      t.string :ship_start
      t.string :completed

      t.timestamps

    end
  end
end
