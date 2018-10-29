class ContestWorkSerializer < ActiveModel::Serializer
  attributes :id,
  			 :work_title, 
			 :team_name
  has_many :contest_work_members
end
