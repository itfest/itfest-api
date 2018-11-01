class ContestWork < ApplicationRecord
	belongs_to :contest_nomination, :dependent => :destroy
	has_many :contest_work_members, :dependent => :destroy

	validates :work_title, presence: true, length: {in: 2..48}, custom_name: true
	validates :team_name, length: {in: 2..48}, custom_name: true
	validates :mentor, presence: true, length: {in: 2..48}, custom_name: true
	validates :notes, presence: true, length: {in: 2..48}, custom_name: true
	validates :software, presence: true, length: {in: 2..48}
	validates :contest_nomination, presence: true
	validates :ref_to_work, presence: true
	validates :how_learned_about, presence: true
	
	accepts_nested_attributes_for :contest_work_members
end
