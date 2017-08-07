# == Schema Information
#
# Table name: locationdetails
#
#  id          :integer          not null, primary key
#  company_id  :integer
#  location_id :integer
#  product_id  :integer
#  capacity    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Locationdetail < ApplicationRecord
end
