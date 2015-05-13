require 'sinatra/base'
require 'battleships'

class BattleshipsApp < Sinatra::Base
  set :views, Proc.new { File.join(root, "..","views") }

  $game = Game.new(Player, Board)
  $board = $game.own_board_view $game.player_1

  get '/' do
    'Hello BattleshipsApp!'
    erb :index
  end

  get '/game/new' do

    erb :game_new
end

  post '/game' do
    $name = params[:name]
    if $name == ""
      erb :game_new
    else
      erb :game
    end
  end

  get '/game' do
    $board = $game.own_board_view $game.player_1
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
