class SignUp < ApplicationRecord

    validates :time, inclusion: { in: 0..23}

    belongs_to :activity, dependent: :destroy
    belongs_to :sign_up
end
