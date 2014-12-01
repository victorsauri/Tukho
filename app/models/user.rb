class User < ActiveRecord::Base
	has_many :connectors
  has_many :events, through: :connectors

	validates :name, presence: true, format: {with: /\A[\w\s*]+\Z/}
	validates :description, presence: true, format: {with: /\A[\w\s*]+\Z/}
	validates_inclusion_of :privacy, :in => [true, false]
	validates :email, presence: true, uniqueness: true, format: {with: /[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})/}
	validates :password, presence: true
	# validates :photo, presence: true
end
