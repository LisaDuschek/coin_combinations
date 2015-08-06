require 'sinatra'
require 'sinatra/reloader'
require './lib/coin_combinations'

get '/' do
  erb(:index)
end

get '/game' do
  erb(:result)
end
