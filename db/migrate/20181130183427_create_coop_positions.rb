class CreateCoopPositions < ActiveRecord::Migration[5.1]
  def change
    create_table :coop_positions do |t|
      t.string :position_title
      t.string :period_of_work
      t.string :location
      t.string :review
      t.integer :star_rating
    end
  end
end
