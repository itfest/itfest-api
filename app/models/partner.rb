require 'carrierwave/orm/activerecord'
class Partner < ApplicationRecord
	mount_uploader :logo, LogoUploader
end
