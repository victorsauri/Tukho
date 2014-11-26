require 'faker'

color_arr = ['green', 'blue', 'red']

20.times do
	User.create(name: Faker::Name.name, description: Faker::Lorem.sentence, photo: Faker::Avatar.image, privacy: false)
end

20.times do
	event = Event.create(name: Faker::Name.name, description: Faker::Lorem.sentence, date: Faker::Date.forward(20),
	photo: Faker::Avatar.image, location: Faker::Address.street_address, starting_time: Faker::Time.between(1.days.ago, Time.now, :evening), 
	starting_time: Faker::Time.between(1.days.ago, Time.now, :midnight), num_people: Faker::Number.number(100))
end

100.times do
	rand_user = rand(0..User.all.count)
	rand_event = rand(0..Event.all.count)
	Connector.create(user_id: rand_user, event_id: rand_event, color: color_arr.sample)
end



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
