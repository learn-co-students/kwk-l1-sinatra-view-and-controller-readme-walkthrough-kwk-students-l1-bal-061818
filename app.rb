require 'bundler'
Bundler.require 
require_relative 'models/ecogov'

class App < Sinatra::Base

  # configure do
  #   set :public_folder, 'public'
  #   set :views, 'app/views'
  # end

  get '/' do
    erb :ecogov
  end
  
  
  post '/results' do 
    answers = params[:state]
    @user_value = answers.to_s
    @senators = your_senators(@user_value)
    erb :senators
  end 
end 