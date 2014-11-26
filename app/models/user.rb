class User < ActiveRecord::Base
	has_and_belongs_to_many :events

	validates :name, presence: true, format: {with: /\A[\w\s*]+\Z/}
	validates :description, presence: true, format: {with: /\A[\w\s*]+\Z/}
	validates :color, presence: true
	# validates :photo, presence: true
	validates_inclusion_of :privacy, :in => [true, false]
end
