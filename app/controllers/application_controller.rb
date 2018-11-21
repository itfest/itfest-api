class ApplicationController < ActionController::API
	include Response
	include ExceptionHandler
	def registration_active
		unless GeneralInfo.exists?(:is_registration_active => true)
			json_response({error:'Регистрация закрыта'}.to_json,503)
	    end
	end

	def not_found
		json_response({error:'Not_found'}.to_json,404)
	end
end
