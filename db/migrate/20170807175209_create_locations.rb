class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.integer :company_id
      t.string :city
      t.string :state

      t.timestamps

    end
  end
end
