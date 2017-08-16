class AddParentToShiptolocation < ActiveRecord::Migration[5.0]
  def change
    add_column :shiptolocations, :parent, :string
  end
end
