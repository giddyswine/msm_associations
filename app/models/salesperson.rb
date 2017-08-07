# == Schema Information
#
# Table name: salespeople
#
#  id          :integer          not null, primary key
#  salesperson :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Salesperson < ApplicationRecord
end
