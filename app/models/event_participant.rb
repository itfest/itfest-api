class EventParticipant < ApplicationRecord
	belongs_to :event_participation_note

	validates  :how_learned_about, presence: true
	validates  :first_name, presence: true, length: {in: 2..16}, custom_name: true
	validates  :last_name, presence: true, length: {in: 2..16}, custom_name: true 
	validates  :patronymic, presence: true, length: {in: 2..16}, custom_name: true
	validates  :university, presence: true, length: {in: 2..48}, custom_name: true
	validates  :speciality, presence: true, length: {in: 1..48}, custom_name: true
	validates  :year_of_study, presence: true, numericality: { only_integer: true }
	validates  :group, presence: true
	validates  :address, presence: true
	validates  :birthdate, presence: true
	validates  :email, presence: true, uniqueness: true, email: true
	validates  :phone, presence: true
	validates  :city, presence: true

	validate   :soc_media
	
	validate   :show_email
	validate   :answers
	validate   :is_online
			    # presence: {if: :is_online_participation_available?}
	


	
	validates  :event_participation_note, presence: true




	# private

	# def is_online_participation_available?
	# 	unless event.is_online_participation_available==true
	# 		errors.add(:base,"IS ONLINE is disable for this event")
	# 	end
	# end

	# # def has_coach?
	# # 	unless event.has_coach==true
	# # 		errors.add(:base,"COACH is disable for this event")
	# # 	end
	# # end
end
