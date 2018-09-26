FactoryBot.define do 
	factory :contest_work do
		first_name {Faker::Name.first_name}
		last_name {Faker::Name.last_name}
		patronymic {Faker::Name.middle_name}
		university {Faker::Lorem.word}
		year_of_study {Faker::Number.between(1,6)}
		group {Faker::Number.number(6)}
		email {Faker::Internet.email}
		phone {Faker::PhoneNumber.cell_phone}
	end
end