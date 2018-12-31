class CoopPositionSerializer < ActiveModel::Serializer
  attributes :position_title, :period_of_work, :location, :review, :star_rating
  belongs_to :student
  belongs_to :company
end
