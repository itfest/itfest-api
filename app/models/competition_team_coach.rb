class CompetitionTeamCoach < ApplicationRecord
	belongs_to :competition_team
	validates :first_name, presence: true, length: {in: 2..16}, custom_name: true
	validates :last_name, presence: true, length: {in: 2..16}, custom_name: true 
	validates :patronymic, presence: true, length: {in: 2..16}, custom_name: true
	validates :birthdate, presence: true
	validates :workplace, presence: true
	validates :position, presence: true
	validates :address, presence: true
	validates :soc_media
	validates :email, presence: true, uniqueness: true, email: true
	validates :phone, presence: true
	validates :competition_team, presence: true
	validates_associated :competition_team
end
