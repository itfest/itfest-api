class GeneralInfo < ApplicationRecord
	validate :unique_record
	validate :dates
	validates :is_registration_active, inclusion: { in: [true, false] }
	validate :annotation

	def unique_record
	    if GeneralInfo.count >= 1
	      errors.add :base, 'There can only be one general_info element' 
	    end
  	end
end
