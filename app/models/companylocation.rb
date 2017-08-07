# == Schema Information
#
# Table name: companylocations
#
#  id         :integer          not null, primary key
#  company_id :integer
#  city       :string
#  state      :string
#  product_id :integer
#  capacity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Companylocation < ApplicationRecord
end
