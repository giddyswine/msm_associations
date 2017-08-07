# == Schema Information
#
# Table name: customers
#
#  id         :integer          not null, primary key
#  promise_id :integer
#  name       :string
#  short_name :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Customer < ApplicationRecord
end
