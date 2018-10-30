class ContestWorkMemberSerializer < ActiveModel::Serializer
  belongs_to :contest_works

  attributes :id,
  			 :first_name, 
			 :last_name, 
			 :patronymic, 
			 :university
 
end
