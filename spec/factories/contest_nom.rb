FactoryBot.define do 
	factory :contest_nomination do
		caption {Faker::Company.name}
		availible_for_registration {Faker::Boolean.boolean}
	end
end