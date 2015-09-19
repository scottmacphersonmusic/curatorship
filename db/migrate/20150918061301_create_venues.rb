class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.integer :capacity
      t.boolean :all_ages

      t.timestamps null: false
    end
  end
end
