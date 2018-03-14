# Test Data generated with faker gem

require 'faker'

# Users creation
puts 'started loading User data'

30.times do |row|
  User.create(name: Faker::Name.name,
  email: Faker::Internet.free_email,
  bio: Faker::Movie.quote)
end

puts 'finished loading User data'


# Achievements creation
puts 'started loading Achievement data'

30.times do |row|
  Achievement.create(name: Faker::DrWho.catch_phrase,
  description: Faker::Hobbit.quote ,
  date: Faker::Date.forward(15))
end

puts 'finished loading Achievement data'


# Comments creations
puts 'started loading Comment data'

30.times do |row|
  Comment.create(description: Faker::DrWho.catch_phrase,
  date: Faker::Date.forward(15),
  user_id: Faker::Number.between(1, 30))
end

puts 'finished loading Comment data'


# Diet creations
puts 'started loading Diet data'

30.times do |row|
  Diet.create(name: Faker::Food.dish,
  start_date: Faker::Date.forward(15),
  end_date: Faker::Date.forward(40))
end

puts 'finished loading Diet data'
