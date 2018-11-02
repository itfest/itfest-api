class ContestWork < ApplicationRecord
	belongs_to :contest_nomination, :dependent => :destroy
	has_many :contest_work_members, :dependent => :destroy

	validates :work_title, presence: true, length: {in: 2..48}, custom_name: true
	validates :team_name, length: {in: 2..48}, custom_name: true
	validates :mentor, length: {in: 2..48}, custom_name: true
	validate  :notes
	validates :software, custom_name: true
	validates :contest_nomination, presence: true
	validates :ref_to_work, presence: true
	validate  :how_learned_about
	
	accepts_nested_attributes_for :contest_work_members
end
