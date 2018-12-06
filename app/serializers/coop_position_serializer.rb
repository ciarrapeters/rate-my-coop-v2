class CoopPositionSerializer < ActiveModel::Serializer
  attributes :position_title, :period_of_work, :location, :review, :star_rating
  #has_many :students
  #has_one :student
  belongs_to :company
end
