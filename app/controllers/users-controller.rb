get '/users' do
  @users = User.all
  erb :'users/index'
end
get '/users/new' do
  erb :'users/new'
end
post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect '/'
  else
    redirect '/users/new'
  end
end

get '/users/concerts' do
  @user = User.find(session[:user_id])
  @going_to = @user.concerts
  erb :'users/concerts'
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'users/show'
end
get '/users/:id/edit' do
  @user = User.find(params[:id])
  erb :'users/edit'
end
put '/users/:id' do
  @user = User.find(params[:id])
  @user.assign_attributes(params[:user])
  if @user.save
    redirect '/users'
  else
    erb :errors
  end
end
delete '/users/:id' do
  @user = User.find(params[:id])
  @user.destroy
  redirect '/users'
end