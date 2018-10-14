require './config/environment'

namespace :db do
	desc "create first default values in DB"
	task :init_values => :environment do
		GeneralInfo.create(
			:dates => 'Примерная дата 14-16 декабря', 
			:is_registration_active => false,
			:annotation => 'Регистрация закрыта'
		)
	end
end
