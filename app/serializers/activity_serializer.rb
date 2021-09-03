class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :name, :difficulty

has_many :sign_ups
# has_many :campers, through :sign_ups
end
