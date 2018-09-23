class PartnersController < ApplicationController
	before_action :set_partner, only: [:show, :edit, :update, :destroy]

	def index
		@partners = Partner.all
		json_response @partners
	end

	def create
		@partner = Partner.create! partner_params
		json_response @partner, :created
	end

	def show
		json_response @partner
	end

	def update
		@partner.update partner_params
		head :no_content		
	end

	def destroy
		@partner.destroy
		head :no_content		
	end

	private

	def partner_params
		params.permit :name, :link, :logo
	end

	def set_partner
		@partner = Partner.find params[:id]
	end

end
