class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.integer :promise_id
      t.string :name
      t.string :short_name

      t.timestamps

    end
  end
end
