class GeneralInfo < ApplicationRecord
	validates :dates
	validates :is_registration_active, inclusion: { in: [true, false] }
	validates :annotation
end
