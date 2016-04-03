require 'faker'

10.times do 
  User.create(name: Faker::Name.name)
end

10.times do 
  prices = [10, 20, 30, 40, 50, 80]
  price = prices.sample
  level = (prices.index(price)) + 1
  amount = (100..10000).to_a.sample
  TicketLevel.create(price: price, available_tickets: amount, level: level)
end

100.times do 
  level = (1..10).to_a.sample
  Ticket.create(ticket_level_id: level)
end

100.times do 
  user = (1..10).to_a.sample
  ticket = (1..100).to_a.sample
  Attendee.create(user_id: user, ticket_id: ticket)
end

