class AddCompanyToCoopOpportunity < ActiveRecord::Migration[5.1]
  def change
    add_reference :coop_positions, :company, foreign_key: true
  end
end
