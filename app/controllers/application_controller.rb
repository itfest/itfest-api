class ApplicationController < ActionController::API
	include Response
	include ExceptionHandler
	def registration_active
		unless GeneralInfo.exists?(:is_registration_active => true)
			json_response(error:'Регистрация закрыта',:status=>:service_unavailable)
	    end
	end
end
