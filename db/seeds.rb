# Test Data generated with faker gem

require 'faker'

# Users creation
puts 'started loading User data'
User.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = '<users>'")

30.times do |row|
  User.create(name: Faker::Name.name,
  email: Faker::Internet.free_email,
  bio: Faker::Movie.quote)
end

puts 'finished loading User data'


# Achievements creation
puts 'started loading Achievement data'
Achievement.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = '<achievements>'")

30.times do |row|
  Achievement.create(name: Faker::DrWho.catch_phrase,
  description: Faker::Hobbit.quote ,
  date: Faker::Date.forward(15))
end

puts 'finished loading Achievement data'


# Comments creations
puts 'started loading Comment data'
Comment.destroy_all

30.times do |row|
  Comment.create(description: Faker::DrWho.catch_phrase,
  date: Faker::Date.forward(15),
  user_id: Faker::Number.between(1, 30))
end

puts 'finished loading Comment data'


# Diet creations
puts 'started loading Diet data'
Diet.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = '<diets>'")

30.times do |row|
  Diet.create(name: Faker::Food.dish,
  start_date: Faker::Date.forward(15),
  end_date: Faker::Date.forward(40))
end

puts 'finished loading Diet data'


# Events creations
puts 'started loading Event data'
Event.destroy_all

30.times do |row|
 Event.create(name: Faker::SiliconValley.invention,
  description: Faker::SiliconValley.quote,
  start_date: Faker::Date.forward(5),
  end_date: Faker::Date.forward(20))
end

puts 'finished loading Event data'

# Foods creations
puts 'started loading Food data'
Food.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = '<foods>'")


30.times do |row|
 Food.create(name: Faker::Food.spice,
  sort: Faker::Food.metric_measurement,
  description: Faker::Coffee.notes,
  averageprice: Faker::Commerce.price)
end

puts 'finished loading Food data'

# Groups creations
puts 'started loading Group data'
Group.destroy_all

30.times do |row|
 Group.create(name: Faker::RockBand.name,
  sort: Faker::StarWars.specie ,
  description: Faker::StarWars.wookiee_sentence,
  num_members: Faker::Number.between(1, 10))
end

puts 'finished loading Group data'

# Histories creations
puts 'started loading History data'
History.destroy_all
30.times do |row|
 History.create(description: Faker::HarryPotter.house,
  weight: Faker::Number.decimal(2) ,
  height: Faker::Number.between(150, 190) ,
  start: Faker::Date.forward(4),
  current_time: Time.now,
  num_achievements: Faker::Number.between(1, 10),
  num_diets: Faker::Number.between(1, 10),
  num_physical_activities: Faker::Number.between(1, 10),
  num_groups: Faker::Number.between(1, 10),
  num_events: Faker::Number.between(1, 10),
  level: Faker::Hobbit.character)
end

puts 'finished loading History data'

# Phyactivities creations
puts 'started loading Phyactivity data'
Phyactivity.destroy_all

30.times do |row|
 Phyactivity.create(name: Faker::Hacker.noun,
  description: Faker::Hacker.say_something_smart ,
  duration: Faker::Number.between(10, 30) ,
  required_elements: Faker::Beer.name)
end

puts 'finished loading Phyactivity data'

# Places creations
puts 'started loading Place data'
Place.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = '<place>'")


30.times do |row|
 Place.create(name: Faker::StarWars.planet,
  location: Faker::StarWars.vehicle ,
  latitude: Faker::Number.between(70, 80) ,
  longitude: Faker::Number.between(70, 80))

end

puts 'finished loading Place data'

# Plans creations
puts 'started loading Plan data'
Plan.destroy_all
30.times do |row|
 Plan.create(name: Faker::Superhero.name,
  sort: Faker::Superhero.power ,
  description: Faker::Science.element ,
  start_date: Faker::Date.forward(5),
  end_date: Faker::Date.forward(20))

end

puts 'finished loading Plan data'

# Tips activities creations
puts 'started loading Tipactivity data'
Tipactivity.destroy_all

30.times do |row|
 Tipactivity.create(description: Faker::RuPaul.quote)
end

puts 'finished loading Tipactivity data'

# Tips diets creations
puts 'started loading Tipdiet data'
Tipdiet.destroy_all

30.times do |row|
 Tipdiet.create(description: Faker::Simpsons.quote)
end

puts 'finished loading Tipdiet data'
