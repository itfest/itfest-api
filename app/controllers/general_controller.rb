class GeneralController < ApplicationController
	before_action :set_general_info, only: [:update]

	def info
		@info = GeneralInfo.first
		json_response @info
	end

  	def create
		@info = GeneralInfo.create! general_params
		json_response @info, :created
	end

	def update
		@info.update general_params
		head :no_content  
	end

	private

	def general_params
		params.permit :dates, :is_registration_active, :annotation
	end

	def set_general_info
		@info = GeneralInfo.find params[:id]
	end


end
