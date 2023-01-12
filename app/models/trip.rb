class Trip < ApplicationRecord
  belongs_to :user
  has_many :destinations, dependent: :destroy
  validates :name, presence: true
  accepts_nested_attributes_for :destinations, allow_destroy: true



end
