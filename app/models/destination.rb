class Destination < ApplicationRecord
  belongs_to :trip
 
  include Validation
  include Position
  
  geocoded_by :places 
  after_validation :geocode

  validates :latitude, presence: true
  validates :longitude, presence: true

  def places
    [:address]
  end
end
