require 'faker'

10.times do 
  User.create(name: Faker::Name.name)
end

100.times do 
  Ticket.create()
end

100.times do 
  user = (1..10).to_a.sample
  ticket = (1..100).to_a.sample
  Attendee.create(user_id: user, ticket_id: ticket)
end

