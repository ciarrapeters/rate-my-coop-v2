class CompanySerializer < ActiveModel::Serializer
  attributes :name
  has_many :coop_positions
end
