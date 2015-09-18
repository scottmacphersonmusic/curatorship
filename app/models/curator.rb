class Curator < ActiveRecord::Base
  attr_accessible :event_date, :venue, :venue_attributes

  belongs_to :artist
  belongs_to :venue

  accepts_nested_attributes_for :venue,
                                reject_if: :all_blank
end
