class Appointement < ApplicationRecord
    belongs_to :doctoo
    belongs_to :patient
end
