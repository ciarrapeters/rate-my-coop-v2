class Student < ActiveRecord::Base
  has_many :coop_positions
  #has_many :companies
end
