require 'faker'

# create a few users
User.create :name => 'Dev Bootcamp Student', :email => 'me@example.com'
5.times do
  User.create :name => Faker::Name.name, :email => Faker::Internet.email
end

# create a few technical skills
computer_skills = %w(Ruby Sinatra Rails JavaScript jQuery HTML CSS)
computer_skills.each do |skill|
  Skill.create :name => skill, :context => 'technical'
end

# create a few creative skills
design_skills = %w(Photoshop Illustrator Responsive-Design)
design_skills.each do |skill|
  Skill.create :name => skill, :context => 'creative'
end

# create associations between users and skills
2.times do
  User.all.each do |user|
    Proficiency.create :user_id => user.id, :skill_id => rand(1..10), :skill_rating => rand(1..10)
  end
end