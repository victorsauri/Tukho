class Event < ActiveRecord::Base
	has_many :associations
  has_many :users, through: :associations

	validates :name, presence: true, uniqueness: true, format: {with: /\A[\w\s*]+\Z/}
	validates :description, presence: true
	validates :date, presence: true
	validates :photo, presence: true
	validates :location, presence: true
	validates :starting_time, presence: true
	validates :finishing_time, presence: true
	validates :num_people, presence: true, numericality: true
end

 	# t.string :name
  #   	t.text :description
  #   	t.datetime :date
  #   	t.string :photo
  #   	t.string :location
  #   	t.datetime :starting_time
  #   	t.datetime :finishing_time
  #   	t.integer :num_people