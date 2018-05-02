require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('models/game')

get '/rock' do
  input = Game.computer_choice()
  game = Game.new(input)
  @outcome = game.player_rock()
  erb( :result )
end

get '/scissors' do
  input = Game.computer_choice()
  game = Game.new(input)
  @outcome = game.player_scissors()
  erb( :result )
end

get '/paper' do
  input = Game.computer_choice()
  game = Game.new(input)
  @outcome = game.player_paper()
  erb( :result )
end

get '/' do
  erb(:home)
end

get '/about_us' do
  erb(:about_us)
end
