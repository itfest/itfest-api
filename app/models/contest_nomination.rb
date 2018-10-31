class ContestNomination < ApplicationRecord
	has_many :contest_works, :dependent => :destroy
	
	validates :caption, presence: true
	validate  :description
	validate :availible_for_registration
end
