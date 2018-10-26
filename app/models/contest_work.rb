class ContestWork < ApplicationRecord
	belongs_to :contest_nomination, :dependent => :destroy
	has_many :contest_work_members, :dependent => :destroy
	validates :work_title, presence: true, length: {in: 2..48}, custom_name: true
	validates :team_name, presence: true, length: {in: 2..48}, custom_name: true
	validates :manager, presence: true, length: {in: 2..48}, custom_name: true
	validates :notes, presence: true, length: {in: 2..48}, custom_name: true
	validates :software, presence: true, length: {in: 2..48}
	validates :contest_nomination, presence: true
	accepts_nested_attributes_for :contest_work_members, limit: 3
end
