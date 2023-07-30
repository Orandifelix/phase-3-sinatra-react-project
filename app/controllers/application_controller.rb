class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

    get '/users' do
    User.all.to_json
  end

    delete '/users/:id' do 
    users = User.find(params[:id])
    users.destroy
    {
      status: 'success',
      message: 'User deleted'
    }.to_json
  end

  get '/favorites' do
    favorites = Favorite.all
  favorites.to_json
  end


  delete '/favorites/:id' do 
    favorite = Favorite.find(params[:id])
    favorite.destroy
    {
      status: 'success',
      message: 'Favorite deleted'
    }.to_json
  end
  
#  the  user should info after signing up
  post '/users' do
    user_params = params[:user]
    user = User.new(user_params)

    if user.save
      status 201
      user.to_json
    else
      status 400
      { error: user.errors.full_messages }.to_json
    end
  end

  # capturing  user  info to let  him  update  the profile

  get '/users/last_updated' do
  last_updated_user = User.order(updated_at: :desc).first

  if last_updated_user
    status 200
    last_updated_user.to_json
  else
    status 404
    { error: 'No users found' }.to_json
  end
end

# get '/users/last_updated' do
#   last_updated_user = {}

#   if last_updated_user
#     status 200
#     last_updated_user.to_json
#   else
#     status 404
#     { error: 'No users found' }.to_json
#   end
# end


    get '/profiles' do
    Profile.all.to_json
  end



#updating a profiles

  post '/profiles' do
    profile_params = params.require(:profile).permit(:first_name, :last_name, :username, :email, :password, :dob, :gender, :seeking, :location, :age, :marital_status, :bio, :interest, :height, :ethnicity, :living_with, :education_level, :no_of_children, :drinking_habits, :smoking_habits, :passion, :account_status, :user_id, :avatar_url)
    profile = Profile.new(profile_params)

    if profile.save
      status 201
      profile.to_json
    else
      status 400
      { error: profile.errors.full_messages }.to_json
    end
  end

  
end