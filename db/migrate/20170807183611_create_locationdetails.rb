class CreateLocationdetails < ActiveRecord::Migration[5.0]
  def change
    create_table :locationdetails do |t|
      t.integer :company_id
      t.integer :location_id
      t.integer :product_id
      t.integer :capacity

      t.timestamps

    end
  end
end
