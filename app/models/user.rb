class User < ActiveRecord::Base
	has_many :associations
  has_many :events, through: :associations

	validates :name, presence: true, format: {with: /\A[\w\s*]+\Z/}
	validates :description, presence: true, format: {with: /\A[\w\s*]+\Z/}
	validates :color, presence: true
	# validates :photo, presence: true
	validates_inclusion_of :privacy, :in => [true, false]
end
