require 'carrierwave/orm/activerecord'
class Download < ApplicationRecord
	mount_uploader :file, FileUploader, mount_on: :file
end
