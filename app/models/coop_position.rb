class CoopPosition < ActiveRecord::Base
  has_one :student
  #has_many :students
  belongs_to :company
end
