class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

    get '/users' do
    User.all.to_json
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



    get '/profiles' do
    Profile.all.to_json
  end
end
