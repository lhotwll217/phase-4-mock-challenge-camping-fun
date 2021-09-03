class CamperSerializer < ActiveModel::Serializer
  attributes :name, :age

  has_many :sign_ups
  has_many :activities


end
