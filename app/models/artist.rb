class Artist < ActiveRecord::Base
  attr_accessible :name, :genre, :draw

  has_many :curators
  has_many :venues, through: :curators

  accepts_nested_attributes_for :curators,
                                reject_if: :all_blank,
                                allow_destroy: true
  accepts_nested_attributes_for :venues

  validates :name, :genre, :draw, presence: true
  validates :draw, numericality: { only_integer: true }
end
