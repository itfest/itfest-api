class EventParticipationNote < ApplicationRecord
	belongs_to :event
	has_one   :coach
	has_one   :question_list
	validates :notes, presence: true
	validates :first_name, presence: true, length: {in: 2..16}, custom_name: true
	validates :last_name, presence: true, length: {in: 2..16}, custom_name: true 
	validates :patronymic, presence: true, length: {in: 2..16}, custom_name: true
	validates :university, presence: true, length: {in: 2..48}, custom_name: true
	validates :speciality, presence: true, length: {in: 1..48}, custom_name: true
	validates :year_of_study, presence: true, numericality: { only_integer: true }
	validates :group, presence: true
	validates :address, presence: true
	validates :birthdate, presence: true
	validates :email, presence: true, uniqueness: true, email: true
	validates :phone, presence: true
	validate  :show_email
	validate  :soc_media
	validates :how_learned_about, presence: true
	validates :event, presence: true
	validate  :coach
	validate  :question_list
end
