class AnnotationsController < ApplicationController
	before_action :set_annotation_element, only: [:show, :update, :destroy]

	def index
		@annotations = AnnotationElement.all
		json_response @annotations
	end

	def create
		@annotation = AnnotationElement.create! annotation_params
		json_response @annotation, :created
	end

	def show
		json_response @annotation
	end

	def update
		@annotation.update annotation_params
		head :no_content		
	end

	def destroy
		@annotation.destroy
		head :no_content		
	end

	private

	def annotation_params
		params.permit :title, :content, :link
	end

	def set_annotation_element
		@annotation = AnnotationElement.find params[:id]
	end
end
