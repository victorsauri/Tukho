require 'faker'

# 25.times do
# 	User.create(name: Faker::Name.name, description: Faker::Lorem.sentence, 
# 		color: Faker::Commerce.color, photo: Faker::Avatar.image, privacy: false)
# end

# 50.times do
# 	event = Event.create(name: Faker::Name.name, description: Faker::Lorem.sentence, date: Faker::Date.forward(20),
# 	photo: Faker::Avatar.image, location: Faker::Address.street_address, starting_time: Faker::Time.between(1.days.ago, Time.now, :evening), 
# 	starting_time: Faker::Time.between(1.days.ago, Time.now, :midnight), num_people: Faker::Number.number(100))

# 	Event.create(name: Faker::Name.name, description: Faker::Lorem.sentence, date: Faker::Date.forward(20),
# 	photo: Faker::Avatar.image, location: Faker::Address.street_address, starting_time: Faker::Time.between(1.days.ago, Time.now, :evening), 
# 	starting_time: Faker::Time.between(1.days.ago, Time.now, :midnight), num_people: Faker::Number.number(100))

# 	offset = rand(User.count)
# 	event.users << User.offset(offset).first
end


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
