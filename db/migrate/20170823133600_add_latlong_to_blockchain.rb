class AddLatlongToBlockchain < ActiveRecord::Migration[5.0]
  def change
    add_column :blockchains, :latitude, :float
    add_column :blockchains, :longitude, :float
  end 
end