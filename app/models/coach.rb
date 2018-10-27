class Coach < ApplicationRecord
	belongs_to :event_participation_note
	validates :first_name, presence: true, length: {in: 2..16}, custom_name: true
	validates :last_name, presence: true, length: {in: 2..16}, custom_name: true 
	validates :patronymic, presence: true, length: {in: 2..16}, custom_name: true
	validates :birthdate, presence: true
	validates :workplace, presence: true
	validates :position, presence: true
	validates :address, presence: true
	validate  :soc_media
	validates :email, presence: true, uniqueness: true, email: true
	validates :phone, presence: true
	validates :event_participation_note, presence: true
end
