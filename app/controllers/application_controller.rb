class ApplicationController < ActionController::API
	include Response
	include ExceptionHandler
	include ActionController::Serialization
end
