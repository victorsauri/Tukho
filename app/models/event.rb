class Event < ActiveRecord::Base
	has_many :connectors
  has_many :users, through: :connectors

	validates :name, presence: true, uniqueness: true, format: {with: /\A[\w\s*]+\Z/}
	validates :description, presence: true
	validates :date, presence: true
	# validates :photo, presence: true
	validates :location, presence: true
	validates :starting_time, presence: true
	validates :finishing_time, presence: true
	# validates :num_people, presence: true, numericality: true
end

