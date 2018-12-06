class StudentSerializer < ActiveModel::Serializer
  attributes :name, :contact
  has_many :coop_positions
  #has_many :companies
end
