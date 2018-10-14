class ContestNominationSerializer < ActiveModel::Serializer
  attributes :caption, :availible_for_registration
  has_many :contest_works
end
