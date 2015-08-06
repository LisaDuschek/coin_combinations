require 'sinatra'
require 'sinatra/reloader'
require './lib/coin_combinations'
also_reload('lib/**/*.rb')

get '/' do
  erb(:index)
end

get '/result' do
  @result = params.fetch('number').to_i().combine()
  erb(:result)
end
