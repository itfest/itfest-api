class ContestNomination < ApplicationRecord
	has_many :contest_works
	validates :caption, presence: true
end
