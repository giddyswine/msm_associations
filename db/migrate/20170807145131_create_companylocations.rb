class CreateCompanylocations < ActiveRecord::Migration[5.0]
  def change
    create_table :companylocations do |t|
      t.integer :company_id
      t.string :city
      t.string :state
      t.integer :product_id
      t.integer :capacity

      t.timestamps

    end
  end
end
