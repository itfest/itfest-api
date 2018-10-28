class EventsController < ApplicationController
	before_action :set_event, only: [:show, :update, :destroy]

	def index
		@events = Event.all
		json_response @events
	end

	def create
		@event = Event.create! event_params
		json_response @event, :created
	end

	def show
		json_response @event
	end

	def update
		@event.update event_params
		head :no_content    
	end

	def destroy
		@event.destroy
		head :no_content    
	end

	private

	def event_params
		params.permit(
				:title,
				:team_limit, 
				:description, 
				:coach, 
				:question,
				:notes
		)
	end

	def set_event
		@event = Event.find params[:id]
	end
end
