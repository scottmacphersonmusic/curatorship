class Venue < ActiveRecord::Base
  has_many :concerts
  has_many :artists, through: :concerts

  validates :name, :capacity, presence: true
  validates :capacity, numericality: { only_integer: true }
end
