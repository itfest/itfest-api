class ContestWorkSerializer < ActiveModel::Serializer
  attributes :work_title, 
			 :team_name
  has_many :contest_work_members
end
