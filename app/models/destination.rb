class Destination < ApplicationRecord
  belongs_to :trip
 
  geocoded_by :places 
  after_validation :geocode

  def places
    [:address]
  end
end
