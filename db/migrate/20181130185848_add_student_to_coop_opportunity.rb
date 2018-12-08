class AddStudentToCoopOpportunity < ActiveRecord::Migration[5.1]
  def change
    add_reference :coop_positions, :student, foreign_key: true
  end
end
