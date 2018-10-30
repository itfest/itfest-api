# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

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
			ref_to_work: "/",
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

6.times do 

	event=Event.create({
		title: Faker::Name.first_name, 
		description: Faker::Lorem.sentence(4),
		has_coach:  Faker::Boolean.boolean,
		has_question:  Faker::Boolean.boolean,
		is_online_participation_available: Faker::Boolean.boolean,
		is_show_email_available: Faker::Boolean.boolean,
		team_limit: Faker::Number.between(1, 3)
	})
 
 	2.times do 
	
		team=EventParticipationNote.create({


			event: event,
			title: Faker::Name.first_name,
			how_learned_about: Faker::Name.first_name,
			answers: Faker::Name.first_name,
			is_online: Faker::Boolean.boolean


		})
		

		Coach.create({

			first_name: Faker::Name.first_name, 
			last_name: Faker::Name.first_name, 
			patronymic: Faker::Name.first_name, 
			birthdate: Faker::Date.backward(13),
			workplace: Faker::Name.first_name,
			position: Faker::Name.first_name,
			address: Faker::Name.first_name,
			soc_media: Faker::Name.first_name,
			email: Faker::Internet.email,
			phone: Faker::PhoneNumber.cell_phone,
			
			event_participation_note: team


		})

		2.times do

			EventParticipant.create({

				first_name: Faker::Name.first_name,  
				last_name: Faker::Name.first_name,  
				patronymic: Faker::Name.first_name, 
				university: Faker::Name.middle_name,
				speciality: Faker::Name.middle_name,
				year_of_study: Faker::Number.between(1, 5),
				group: Faker::Name.middle_name, 
				address: Faker::Name.middle_name,
				birthdate: Faker::Date.backward(13),
				email: Faker::Internet.email,
				phone: Faker::PhoneNumber.cell_phone,
				city: Faker::Name.first_name,
				
				soc_media: Faker::Name.first_name,

				event_participation_note:team

			})

		end
	end

end 

