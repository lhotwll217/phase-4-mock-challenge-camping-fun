class SignUpSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :activity
  belongs_to :sign_up
end
