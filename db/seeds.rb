# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"
UserSkill.destroy_all
Skill.destroy_all
Booking.destroy_all
User.destroy_all
puts "creating 10 fake users"
10.times do 
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  user = User.new(first_name: first_name, last_name: last_name, email: Faker::Internet.email, password: ("a".."z").to_a.sample(8), github: "https://github.com/#{first_name}", profile_website: Faker::Internet.url, price_per_hour: [20,40,30,50,100,80,75,45,35,25,10,15].sample, linkedin: "https://linkedin.com/in/#{first_name}-#{last_name}")
  user.save
end

puts "creating fake skills"
skills = %w(Ruby Javascript Python NodeJS Rails C++ HTML CSS Kotlin Go Angular VueJS )
index = 0
10.times do
  skill = Skill.new(name: skills[index])
  index += 1
  skill.save
end


puts "creating fake user_skills"
index = 0
10.times do
  user_skill = UserSkill.new(user_id: User.all[index].id, skill_id: Skill.all[index].id)
  index += 1
  user_skill.save
end

puts' Finished faking data'
