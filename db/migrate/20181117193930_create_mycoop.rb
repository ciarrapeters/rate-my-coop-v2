class CreateMycoop < ActiveRecord::Migration[5.1]
  def change
    create_table :mycoops do |t|
      t.string :company_name
      t.string :geo_location
      t.string :review
      t.string :time_period
    end
  end
end
