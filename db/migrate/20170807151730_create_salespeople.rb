class CreateSalespeople < ActiveRecord::Migration[5.0]
  def change
    create_table :salespeople do |t|
      t.string :salesperson

      t.timestamps

    end
  end
end
