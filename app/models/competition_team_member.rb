class CompetitionTeamMember < ApplicationRecord
	belongs_to :competition_team
	validates :first_name, presence: true, length: {in: 2..16}, custom_name: true
	validates :last_name, presence: true, length: {in: 2..16}, custom_name: true 
	validates :patronymic, presence: true, length: {in: 2..16}, custom_name: true
	validates :birthdate, presence: true
	validates :university, presence: true, length: {in: 2..48}, custom_name: true
	validates :speciality, presence: true, length: {in: 1..48}, custom_name: true
	validates :year_of_study, presence: true, numericality: { only_integer: true }
	validates :address, presence: true
	validates :group, presence: true
	validates :email, presence: true, uniqueness: true, email: true
	validates :phone, presence: true
	validates :competition_team, presence: true
end
