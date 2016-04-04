get '/sessions/new' do
  erb :'sessions/new'
end

post '/sessions' do
  puts params
  email = params[:user][:email]
  password = params[:user][:password]
  @user = User.find_by(email: email)
  puts @user.name
  if @user && @user.authenticate(password)
    session[:user_id] = @user.id
    redirect '/'
  else
    @errors = ["Email/Password combination does not exist"]
    erb :'/sessions/new'
  end
end

delete '/sessions' do
  session[:user_id] = nil
  redirect '/'
end