require 'carrierwave/orm/activerecord'
class Partner < ApplicationRecord
	mount_uploader :logo, PartnerLogoUploader
end
