# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"
puts 'Destroying all users'
UserSkill.destroy_all
Skill.destroy_all
Booking.destroy_all
User.destroy_all

puts "creating fake skills"
skills = %w(Ruby Javascript Python NodeJS Rails C++ HTML CSS Kotlin Go Angular VueJS )
index = 0
skills.each do |skill|
  skill = Skill.create(name: skill)
end

job_titles = %w[Twitter Facebook Google BT Virgin LeWagon XYZ StackOverflow Github Microsoft Apple Oracle SAP IBM Coursera LinkedIn Intel Yahoo Buffer]
skill_level = [3, 4, 5]
puts "creating 10 fake users and 10 fake user_skills"
10.times do 
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  user = User.new(first_name: first_name, last_name: last_name, email: Faker::Internet.email, password: ("a".."z").to_a.sample(8), github: "https://github.com/#{first_name}", profile_website: Faker::Internet.url, price_per_hour: [20,40,30,50,100,80,75,45,35,25,10,15].sample, linkedin: "https://linkedin.com/in/#{first_name}-#{last_name}", consultant: [true, false].sample, job_title: job_titles.sample)
  user.save
  skills.sample(3).each do |skill|
    UserSkill.create!(user: user, skill_level: skill_level.sample, skill: Skill.find_by(name: skill))
  end
end



# index = 0
# skills = Skill.all
# skill_id = skills.map {|skill| skill.id}

# 10.times do
#   user_skill = UserSkill.new(user_id: User.all[index].id)
#   current_skill_id = skill_id.sample
#   user_skill.skill_id = current_skill_id
#   user_skill.skill_level = skill_level.sample
#   user_skill.save
#   skill_id -= [current_skill_id ]
#   current_skill_id = skill_id.sample
#   user_skill.skill_id = current_skill_id
#   user_skill.skill_level = skill_level.sample
#   user_skill.save
#   skill_id -= [current_skill_id ]
#   current_skill_id = skill_id.sample
#   user_skill.skill_id = current_skill_id
#   user_skill.skill_level = skill_level.sample
#   user_skill.save
#   index += 1
# end

puts' Finished faking data'
