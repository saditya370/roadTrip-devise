class Destination < ApplicationRecord
  belongs_to :trip
 
  geocoded_by :places 
  after_validation :geocode
  validates :latitude, presence: true
  validates :longitude, presence: true
  include Validation

  def places
    [:address]
  end
end
