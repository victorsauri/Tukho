require 'faker'
color_arr = ['green', 'blue', 'red']

50.times do
	require 'faker'
	Event.create(name: Faker::Company.catch_phrase, description: Faker::Name.title, date: Faker::Date.forward(15), photo: Faker::Avatar.image, location: Faker::Address.street_address, starting_time: Faker::Time.between(1.days.ago, Time.now, :evening), finishing_time: Faker::Time.between(1.days.ago, Time.now, :midnight), num_people: Faker::Number.number(3))
end
50.times do
	require 'faker'
	User.create(name: Faker::Name.name, description: Faker::Name.title, photo: Faker::Avatar.image, privacy: false, email:Faker::Internet.email, password: Faker::Internet.password(4))
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
