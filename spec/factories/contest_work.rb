FactoryBot.define do 
	factory :contest_work do
		first_name {Faker::Name.first_name}
		last_name {Faker::Name.last_name}
		patronymic {Faker::Name.middle_name}
		university {Faker::Lorem.word}
		year_of_study {Faker::Numbers.between(1,6)}
		group {Faker::Numbers.number(6)}
		email {Faker::Internet.email}
		phone {Faker::PhoneNumber.cell_phone}
	end
end