class CreateCurators < ActiveRecord::Migration
  def change
    create_table :curators do |t|
      t.datetime :event_date
      t.belongs_to :artist, index: true
      t.belongs_to :venue, index: true
      t.timestamps null: false
    end
  end
end
