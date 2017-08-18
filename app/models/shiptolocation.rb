# == Schema Information
#
# Table name: shiptolocations
#
#  id           :integer          not null, primary key
#  state        :integer
#  county       :string
#  city         :string
#  shiptonumber :integer
#  shiptoname   :string
#  nickname     :string
#  nh3          :string
#  uan          :string
#  urea         :string
#  an           :string
#  truck        :string
#  rail         :string
#  unittrain    :string
#  railline     :string
#  barge        :string
#  nh3storage   :integer
#  uanstorage   :integer
#  ureastorage  :integer
#  anstorage    :integer
#  nh32015      :integer
#  nh32016      :integer
#  nh32017      :integer
#  uan2015      :integer
#  uan2016      :integer
#  uan2017      :integer
#  urea2015     :integer
#  urea2016     :integer
#  urea2017     :integer
#  an2015       :integer
#  an2016       :integer
#  an2017       :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  parent       :integer
#  latitude     :float
#  longitude    :float
#

class Shiptolocation < ApplicationRecord
    
    def full_address
    [shiptoname, city, county, State.find(state).state].compact.join(', ')
    end

    geocoded_by :full_address
    after_validation :geocode


end
