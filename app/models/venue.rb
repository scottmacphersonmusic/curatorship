class Venue < ActiveRecord::Base
  validates :name, :capacity, presence: true
  validates :capacity, numericality: { only_integer: true }

  has_many :curators
  has_many :artists, through: :curators
end
