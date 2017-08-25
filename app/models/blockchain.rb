# == Schema Information
#
# Table name: blockchains
#
#  id             :integer          not null, primary key
#  salesperson_id :integer
#  product_id     :integer
#  state          :st
#  city           :string
#  customer_id    :integer
#  company_id     :integer
#  source_id      :integer
#  price          :decimal(, )
#  metric         :string
#  tons           :decimal(, )
#  mode           :string
#  terms          :string
#  ship_start     :string
#  completed      :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  shiptonumber   :integer
#  latitude       :float
#  longitude      :float
#

class Blockchain < ApplicationRecord

    # def full_address
    # [Shiptolocation.where(shiptonumber: shiptonumber).first.shiptoname, city, state].compact.join(', ')
    # end

    # geocoded_by :full_address
    # after_validation :geocode  
    validates :ship_start, :presence => true
    validates :shiptonumber, :presence => true
    validates :shiptonumber, :presence => true, :uniqueness => false 

end
