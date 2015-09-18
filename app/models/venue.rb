class Venue < ActiveRecord::Base
  validates :name, :capacity, presence: true
  validates :capacity, numericality: { only_integer: true }
end
