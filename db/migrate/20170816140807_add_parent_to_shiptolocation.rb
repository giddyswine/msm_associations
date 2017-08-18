class AddParentToShiptolocation < ActiveRecord::Migration[5.0]
  def change
    add_column :shiptolocations, :parent, :string
  end
end
class AddLatlongToShiptolocation < ActiveRecord::Migration[5.0]
  def change
    add_column :shiptolocations, :latitude, :float
    add_column :shiptolocations, :longitude, :float
  end
end