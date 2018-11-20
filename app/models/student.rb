class Student < ActiveRecord::Base
  belongs_to :company
  has_many :mycoop
end
