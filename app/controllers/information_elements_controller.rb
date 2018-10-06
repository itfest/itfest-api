class InformationElementsController < ApplicationController
	before_action :set_information_element, only: [:show, :update, :destroy]

	def index
		@information_elements = InformationElement.all
		json_response @information_elements
	end

	def create
		@information_element = InformationElement.create! information_element_params
		json_response @information_element, :created
	end

	def show
		json_response @information_element
	end

	def update
		@information_element.update information_element_params
		head :no_content		
	end

	def destroy
		@information_element.destroy
		head :no_content		
	end

	private

	def information_element_params
		params.permit :title, :content, :link
	end

	def set_information_element_element
		@information_element = InformationElement.find params[:id]
	end
end
