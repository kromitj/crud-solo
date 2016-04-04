get '/' do
  if session[:user_id] != nil
    @user = User.find(session[:user_id])
  end
  erb :'/index'
end