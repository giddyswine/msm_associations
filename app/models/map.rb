# == Schema Information
#
# Table name: maps
#
#  id         :integer          not null, primary key
#  title      :string
#  address    :text
#  latitude   :float
#  longitude  :float
#  visited_by :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Map < ApplicationRecord
    geocoded_by :address
    after_validation :geocode

end
