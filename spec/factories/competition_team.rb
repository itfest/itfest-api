FactoryBot.define do 
	factory :competition_team do
		name {Faker::Name.middle_name}
		how_learned_about {Faker::Lorem.word}
		notes {Faker::Lorem.word}
	end
end