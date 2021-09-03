class Camper < ApplicationRecord
    validates :name, presence: true
    validates :age, :inclusion => { :in => 8..18 }
    has_many :sign_ups
    has_many :activities, through: :sign_ups
end
