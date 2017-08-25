class ChangeStateToStringInBlockchain < ActiveRecord::Migration[5.0]
  def change
    change_column :blockchains, :state, :string
  end
end
