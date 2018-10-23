class GeneralInfo < ApplicationRecord
	validate :dates
	validates :is_registration_active, inclusion: { in: [true, false] }
	validate :annotation
end
