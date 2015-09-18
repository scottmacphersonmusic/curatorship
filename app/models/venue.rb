class Venue < ActiveRecord::Base
  has_many :curators
  has_many :artists, through: :curators

  validates :name, :capacity, presence: true
  validates :capacity, numericality: { only_integer: true }
end
