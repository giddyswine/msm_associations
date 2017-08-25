class AddShiptonumberToBlockchain < ActiveRecord::Migration[5.0]
  def change
    add_column :blockchains, :shiptonumber, :integer
  end
end
