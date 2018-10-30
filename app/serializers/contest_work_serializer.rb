class ContestWorkSerializer < ActiveModel::Serializer
  has_many :contest_work_members

  attributes :id,
  			 :work_title, 
			 :team_name
  
end
