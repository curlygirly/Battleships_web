require 'sinatra/base'
require 'battleships'

class BattleshipsApp < Sinatra::Base
  set :views, Proc.new { File.join(root, "..","views") }

  enable :sessions

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
    # $name = params[:name]
    session[:name] = params[:name]
    $name = session[:name]
    # session[ - this is how you store in a session and create a cookie
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

  get '/placeship' do
    erb :place_ship
  end

  post '/placeship' do
    $coords = params[:shipbox]
    $game.player_1.place_ship Ship.battleship, $coords.to_sym
    $board = $game.own_board_view $game.player_1
    erb :shoot_ship
  end

  get '/shoot_ship' do
    erb :shoot_ship
  end

  post '/shoot_ship' do
    $coords = params[:shipbox]
    $game.player_1.shoot $coords.to_sym
    erb :playing_page
  end

  get '/playing_page' do
    "<pre><%= $game.opponent_board_view $game.player_1 %></pre>"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
