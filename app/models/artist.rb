class Artist < ActiveRecord::Base
  validates :name, :genre, :draw, presence: true
  validates :draw, numericality: { only_integer: true }

  has_many :curators
  has_many :venues, through: :curators
end
