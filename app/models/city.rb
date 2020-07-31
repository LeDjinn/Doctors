class City < ApplicationRecord
    has_many :doctoos
    has_many :patients
    has_many :appointments
end
