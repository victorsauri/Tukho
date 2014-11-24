class User < ActiveRecord::Base
	has_and_belongs_to_many :events

	validates :name, presence: true, uniqueness: true, format: {with: /\A[\w\s*]+\Z/}
	validates :description, presence: true
	validates :color, presence: true
	validates :photo, presence: true
end
