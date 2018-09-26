class ContestWorkController < ApplicationController
	before_action :set_contest_nomination
	before_action :set_contest_work, only: [:show, :update, :destroy]

	def index
		json_response @contest_nomination.contest_works
	end

	def create
		@contest_nomination.contest_works.create!(contest_work_params)
		json_response @contest_nomination, :created
	end

	def show
		json_response @contest_work
	end

	def update
		@contest_work.update contest_work_params
		head :no_content  
	end

	def destroy
		@contest_work.destroy
		head :no_content  
	end

	private

	def contest_work_params
		params.permit :first_name, :last_name, :patronymic, :university, :speciality, :year_of_study, :group, :email, :phone
	end

	def set_contest_nomination
		@contest_nomination=ContestNomination.find params[:contest_nomination_id]
	end

	def set_contest_work
		@contest_work= @contest_nomination.contest_works.find_by!(id: params[:id]) if @contest_nomination
	end
end
