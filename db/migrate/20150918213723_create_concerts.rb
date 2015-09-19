class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.datetime :concert_date
      t.references :artist, index: true, foreign_key: true
      t.references :venue, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
