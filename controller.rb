require('sinatra')
require('sinatra/contrib/all')

require_relative('models/game')

get '/rock' do
  game = Game.new(Game.computer_choice())
  @outcome = game.rock()
  erb( :result )
end

get '/scissors' do
  game = Game.new(Game.computer_choice())
  @outcome = game.scissors()
  erb( :result )
end

get '/paper' do
  game = Game.new(Game.computer_choice())
  @outcome = game.paper()
  erb( :result )
end

get '/' do
  erb(:home)
end

get '/about_us' do
  erb(:about_us)
end
