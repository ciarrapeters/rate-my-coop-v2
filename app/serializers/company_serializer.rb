class CompanySerializer < ActiveModel::Serializer
  attributes :name
  has_many :students, :coop_positions
end
