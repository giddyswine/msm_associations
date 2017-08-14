class ChangeDateToStringInBlockchains < ActiveRecord::Migration[5.0]
  def change
    change_column :Blockchains, :ship_start, :string

    
  end
end
