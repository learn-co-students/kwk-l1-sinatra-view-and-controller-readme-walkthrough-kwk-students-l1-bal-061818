require 'bundler'
Bundler.require
require_relative 'models/questions.rb'

class App < Sinatra::Base
    
  get '/' do 
    erb :index
  end 
  
  get '/questions' do
    erb :questions
  end
  
  get '/oily' do 
    erb :oily 
  end
  
  get '/dry' do
     erb :dry
  end 
  
  post '/results' do
    answers = params.values
    @user_input = Array.new
    answers.each do |answers|
    @user_input.push(answers)
    end
  
    @skin = skin_determinant(@user_input)
    if @skin == "oily"
      erb :oily 
    elsif @skin == "dry"
      erb :dry
    elsif @skin == "combinational"
      erb :combinational
    else @skin == "balanced"
      erb :balanced
    end
  end
end

# oily=[["A","E"],["C","E"]]
# dry=[["D","F"],["C","F"]]
# balanced=["C","H"]
# combinational=[["B","G"],["A","F"],["A","G"],["A","H"],
# ["B","E"],["B","F"],["B","H"],["C","G"],
# ["D","E"],["D","G"],["D","H"]]

#   def skin_determinant(user_input)
#     if oily.include? user_input
#       "oily"
#     elsif dry.include? user_input
#       "dry"
#     elsif balanced.include? user_input
#       "balanced"
#     elsif combinational.include? user_input
#       "combinational"
#   end
# end 