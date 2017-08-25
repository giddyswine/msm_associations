class ChangeStateToStringInShiptolocation < ActiveRecord::Migration[5.0]
  def change
    change_column :shiptolocations, :state, :string
  end
end
