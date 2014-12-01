class User < ActiveRecord::Base
	has_many :connectors
  has_many :events, through: :connectors

	validates :name, presence: true, format: {with: /\A[\w\s*]+\Z/}
	validates :description, presence: true, format: {with: /\A[\w\s*]+\Z/}
	validates_inclusion_of :privacy, :in => [true, false]
	# validates :photo, presence: true
end
