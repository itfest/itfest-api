class Page < ApplicationRecord
	validates :title, presence: true
	validates :slug, presence: true, uniqueness: true
	validate :content
end
