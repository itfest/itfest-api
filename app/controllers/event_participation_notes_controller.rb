class EventParticipationNotesController < ApplicationController
	before_action :set_event
	before_action :set_event_part_note, only: [:show, :update, :destroy]

	def index
		json_response @event.event_participation_notes
	end

	def create
		unless registration_active 
			if @event[:is_registration_available]
				@event.event_participation_notes.create! event_part_params
				json_response @event, :created
			else 
				json_response({error:'Регистрация закрыта'}.to_json,503)
			end
		end
	end

	def show
		json_response @event_participation_note
	end

	def update
		@event_participation_note.update event_part_params
		head :no_content  
	end

	def destroy
		@event_participation_note.destroy
		head :no_content  
	end

	private

	def event_part_params
		params.require(:event_participation_note).permit(

		:title,	
		:is_online,
		:answers,
		:how_learned_about,

		event_participants_attributes: [

			:first_name,
			:last_name, 
			:patronymic,
			:university,
			:speciality, 
			:year_of_study, 
			:group, 
			:address,
			:birthdate, 
			:email,
			:phone, 
			:soc_media


		],

		coach_attributes: [
			
	        :first_name,
	        :last_name,
	        :patronymic,
	        :birthdate,
	        :workplace,
	        :position,
	        :address,
	        :soc_media,
	        :email,
	        :phone
		] 

		)
	end

	def set_event
		@event = Event.find params[:event_id]
	end

	def set_event_part_note
		@event_participation_note= @event.event_participation_note.find_by!(id: params[:id]) if @event
	end
end
