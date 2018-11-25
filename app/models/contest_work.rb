class ContestWork < ApplicationRecord
	belongs_to :contest_nomination
	has_many :contest_work_members, :dependent => :destroy

	validates :work_title, presence: true, length: {in: 2..200}
	validate  :team_name
	validate  :mentor
	validate  :notes
	validate  :software
	validates :contest_nomination, presence: true
	validates :ref_to_work, presence: true
	validate  :how_learned_about
	
	accepts_nested_attributes_for :contest_work_members, :limit => 6

end
