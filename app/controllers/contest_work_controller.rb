class ContestWorkController < ApplicationController
	before_action :set_contest_work, only: [:show, :edit, :update, :destroy]

	def index
		@contest_works = ContestWork.all
		json_response @contest_works
	end

	def create
		@contest_work= ContestWork.create! contest_work_params
		json_response @contest_work, :created
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
		params.permit :first_namme, :last_name, :patronymic, :university, :speciality, :year_of_study, :group, :email, :phone
	end

	def set_contest_work
		@contest_work= ContestWork.find params[:id]
	end
end
