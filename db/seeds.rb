require 'faker'

10.times do 
  User.create(name: Faker::Name.name)
end

venues = ['First Ave.', 'Greek Theater', 'Ed Sulliven', 'Red Rocks', 'The Moon']
location = ['minneapolis', 'La', 'New York', 'Colorado', 'Milky way']
venues.each_with_index do |venue, i|
  Venue.create(name: venue, location: location[i], capacity: 100)
end
genres = ['Alt','Rock','Hip-hop','Jazz','Heavy-Metal']

50.times do 
  Band.create(name: Faker::Name.title, genre: genres.sample)
end

10.times do
  band = (1..50).to_a.sample 
  # cant't get faker to work right
  Concert.create(concert_title: Faker::Name.name, date: nil, venue_id: (1..5).to_a.sample, band_id: band )
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
  concert = (1..10).to_a.sample
  Ticket.create(ticket_level_id: level, concert_id: concert)
end

100.times do 
  user = (1..10).to_a.sample
  ticket = (1..100).to_a.sample
  Attendee.create(user_id: user, ticket_id: ticket)
end

150.times do 
  Album.create(title: Faker::Name.title, band_id: (1..50).to_a.sample, released: nil)
end

