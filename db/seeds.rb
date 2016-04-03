require 'faker'

100.times do 
  User.create(name: Faker::Name.name)
end

50.times do 
  user = (1..100).to_a.sample
  Attendee.create(user_id: user)
end