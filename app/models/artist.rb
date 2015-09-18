class Artist < ActiveRecord::Base
  has_many :concerts
  has_many :venues, through: :concerts

  validates :name, :genre, :draw, presence: true
  validates :draw, numericality: { only_integer: true }
end
