class ContestWorkMember < ApplicationRecord
	belongs_to :contest_work
	validates :first_name, presence: true, length: {in: 2..16}, custom_name: true
	validates :last_name, presence: true, length: {in: 2..16}, custom_name: true 
	validates :patronymic, presence: true, length: {in: 2..16}, custom_name: true
	validates :university, presence: true, length: {in: 2..48}
	validate  :speciality
	validates :year_of_study, presence: true, numericality: { only_integer: true }
	validates :group, presence: true
	validates :address, presence: true
	validates :birthdate, presence: true
	validates :email, presence: true, email: true
	validates :phone, presence: true
	validate  :show_email	
	validate  :soc_media
	validates :contest_work, presence: true
end
