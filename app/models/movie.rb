class Movie < ApplicationRecord
# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key

validates :title, :presence => true, uniqueness: {:scope=>[:year,:duration]}
validates :year, :presence => true, numericality: {only_integer: true , greater_than_or_equal_to: 1870, less_than_or_equal_to: 2050}
validates :duration, :presence => true, numericality: {only_integer: true , greater_than_or_equal_to: 0, less_than_or_equal_to: 2764800}


#  description :text

#  image_url   :string

#  director_id :integer
#validates :director_id, :presence => true

#  created_at  :datetime         not null

#  updated_at  :datetime         not null

end