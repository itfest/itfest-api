class ContestNominationController < ApplicationController
	before_action :set_contest_nomination, only: [:show, :edit, :update, :destroy]

	def index
		@contest_nomination = ContestNomination.all
		json_response @contest_nomination
	end

	def create
		@contest_nomination= ContestNomination.create! contest_nom_params
		json_response @contest_nomination, :created
	end

	def show
		json_response @contest_nomination
	end

	def update
		@contest_nomination.update contest_nom_params
		head :no_content    
	end

	def destroy
		@contest_nomination.destroy
		head :no_content    
	end

	private

	def contest_nom_params
		params.permit :name
	end

	def set_contest_nomination
		@contest_nomination = ContestNomination.find params[:id]
	end
end
