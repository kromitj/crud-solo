get '/concerts' do
  @concerts = Concert.all
  erb :'/concerts/index'
end