# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

5.times do 
	team = CompetitionTeam.create ({
		name: Faker::Name.middle_name,
		how_learned_about: Faker::Lorem.word,
		notes: Faker::Lorem.word
	})

	3.times do
		CompetitionTeamMember.create({
			first_name: Faker::Name.first_name,
			last_name: Faker::Name.last_name,
			patronymic: Faker::Name.middle_name,
			birthdate: Faker::Date.backward(13),
			university: Faker::Name.middle_name,
			speciality: Faker::Lorem.word,
			address: Faker::Lorem.word,
			year_of_study: Faker::Number.between(1,6),
			group: Faker::Number.number(6),
			email: Faker::Internet.email,
			phone: Faker::PhoneNumber.cell_phone,
			competition_team: team
		})
	end
	CompetitionTeamCoach.create({
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		patronymic: Faker::Name.middle_name,
		birthdate: Faker::Date.backward(13),
		workplace: Faker::Name.middle_name,
		position: Faker::Lorem.word,
		address: Faker::Lorem.word,
		soc_media: Faker::Lorem.word,
		email: Faker::Internet.email,
		phone: Faker::PhoneNumber.cell_phone,
		competition_team: team
	})

	nom = ContestNomination.create({
		caption: Faker::Company.name,
		availible_for_registration: Faker::Boolean.boolean
	})

	3.times do
		ContestWork.create({
			first_name: Faker::Name.first_name,
			last_name: Faker::Name.last_name,
			patronymic: Faker::Name.middle_name,
			university: Faker::Name.middle_name,
			year_of_study: Faker::Number.between(1,6),
			group: Faker::Number.number(6),
			email: Faker::Internet.email,
			phone: Faker::PhoneNumber.cell_phone,
			contest_nomination: nom
		})
	end

	AnnotationElement.create({
		title: Faker::Lorem.sentence(2),
		content: Faker::Lorem.paragraph(2, true, 4),
		link: "/"
	})
end

4.times do 
	InformationElement.create({
		title: Faker::Lorem.sentence(2),
		content: Faker::Lorem.paragraph(2, true, 4),
		link: "/"		
	})
end
