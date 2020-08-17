# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"
puts "creating five fake users"
5.times do 
  user = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: ("a".."z").to_a.sample(8))
  user.save
end

puts "creating fake skills"
skills = %w(ruby javascript python nodejs rails c++ html css kotlin)
index = 0
5.times do
  skill = Skill.new(name: skills[index])
  index +=1
  skill.save
end


puts "creating 5 fake user_skills"
index1 = 0
5.times do
  user_skill = UserSkill.new(user_id: User.all[index1].id, skill_id: Skill.all[index1].id)
  index1 +=1
  user_skill.save
end
