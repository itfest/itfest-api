class EventSerializer < ActiveModel::Serializer
  has_one :question_list

  attributes :id,
  			 :title, 
  			 :team_limit, 
  			 :description, 
  			 :has_coach, 
  			 :has_question, 
  			 :is_online_participation_available,
  			 :is_registration_available
  
end
