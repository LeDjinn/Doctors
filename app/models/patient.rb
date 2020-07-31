class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctoos, through: :appointments
end
