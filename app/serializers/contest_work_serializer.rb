class ContestWorkSerializer < ActiveModel::Serializer
  attributes :first_name, 
			 :last_name, 
			 :patronymic, 
			 :university
  belongs_to :contest_nomination
end
