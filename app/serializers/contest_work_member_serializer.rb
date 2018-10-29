class ContestWorkMemberSerializer < ActiveModel::Serializer
  attributes :id,
  			 :first_name, 
			 :last_name, 
			 :patronymic, 
			 :university
  belongs_to :contest_works
end
