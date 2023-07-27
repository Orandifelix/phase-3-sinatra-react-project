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
    get '/profiles' do
    Profile.all.to_json
  end
end
