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
end


4.times do 
	InformationElement.create({
		title: Faker::Lorem.sentence(2),
		content: Faker::Lorem.paragraph(2, true, 4),
		link: "/"		
	})
end

3.times do 

	nom = ContestNomination.create({
		caption: Faker::Name.first_name, 
		availible_for_registration: Faker::Boolean.boolean
	})


		work = ContestWork.create({

			work_title: Faker::Name.first_name, 
			team_name: Faker::Name.first_name,  
			manager: Faker::Name.first_name, 
			notes: Faker::Name.first_name, 
			software: Faker::Name.first_name,
			contest_nomination: nom

		})

			ContestWorkMember.create({

				notes: Faker::Name.first_name, 
				first_name: Faker::Name.first_name, 
				last_name: Faker::Name.last_name,
				patronymic: Faker::Name.middle_name,
				university: Faker::Name.middle_name, 
				speciality: Faker::Name.middle_name,
				year_of_study: Faker::Number.between(1,6),
				group: Faker::Number.number(6),
				address: Faker::Name.middle_name,
				birthdate: Faker::Date.backward(13), 
				email: Faker::Internet.email,
				phone: Faker::PhoneNumber.cell_phone,
				show_email: Faker::Boolean.boolean, 
				soc_media: Faker::Name.middle_name,
				how_learned_about: Faker::Name.middle_name,
				contest_work: work
			})
end

3.times do 
	AnnotationElement.create({
		title: Faker::Lorem.sentence(2),
		content: Faker::Lorem.paragraph(2, true, 4),
		link: "/"
	})
end 
