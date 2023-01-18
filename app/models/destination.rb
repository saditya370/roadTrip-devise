class Destination < ApplicationRecord
  belongs_to :trip
 
  include Validation
  include Position
  
  acts_as_list

  geocoded_by :places 
  after_validation :geocode

  validates :latitude, presence: true
  validates :longitude, presence: true

  def places
    [:address]
  end
end
