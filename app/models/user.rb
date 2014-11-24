class User < ActiveRecord::Base
	has_many :connectors

	validates :name, presence: true, uniqueness: true, format: {with: /\A[\w\s*]+\Z/}
	validates :description, presence: true
	validates :color, presence: true
	validates :photo, presence: true
end
