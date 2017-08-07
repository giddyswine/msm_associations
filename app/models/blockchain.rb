# == Schema Information
#
# Table name: blockchains
#
#  id             :integer          not null, primary key
#  salesperson_id :integer
#  product_id     :integer
#  state          :string
#  city           :string
#  customer_id    :integer
#  company_id     :integer
#  source_id      :integer
#  price          :decimal(, )
#  metric         :string
#  tons           :decimal(, )
#  mode           :string
#  terms          :string
#  ship_start     :date
#  completed      :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Blockchain < ApplicationRecord
end
