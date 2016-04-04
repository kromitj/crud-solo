post '/bands' do

  @band = Band.find_by(name: params[:name])
  @concerts = @band.concerts
  if @band
    erb :'bands/concerts'
  else
  
  end
end