class AnnotationsController < ApplicationController
	before_action :set_annotation_element, only: [:show, :edit, :update, :destroy]

	def index
		@annotations = AnnotationElement.all
		json_response(@annotations)
	end

	def create
		@annotation = AnnotationElement.create! partner_params
		json_response @annotation, :created
	end

	def show
		json_response @annotation
	end

	def update
		@annotation.update partner_params
		head :no_content		
	end

	def destroy
		@annotation.destroy
		head :no_content		
	end

	private

	def partner_params
		params.permit :title, :content, :link
	end

	def set_annotation_element
		@annotation = AnnotationElement.find params[:id]
	end
end
