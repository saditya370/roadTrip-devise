class Trip < ApplicationRecord
  belongs_to :user
  has_many :destinations
  validates :name, presence: true


end
