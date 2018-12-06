class CompanySerializer < ActiveModel::Serializer
  attributes :name
  #has_many :students
  has_many :coop_positions
end
