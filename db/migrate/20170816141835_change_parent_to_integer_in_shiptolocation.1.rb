class ChangeParentToIntegerInShiptolocation < ActiveRecord::Migration[5.0]
  def change
    change_column :shiptolocations, :parent, :integer
  end
end
