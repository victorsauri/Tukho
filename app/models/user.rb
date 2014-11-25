class User < ActiveRecord::Base
	has_and_belongs_to_many :events

	validates :name, presence: true
	validates :description, presence: true
	validates :color, presence: true
	# validates :photo, presence: true
end
