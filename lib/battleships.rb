require 'sinatra/base'
require 'battleships'

class BattleshipsApp < Sinatra::Base
  set :views, Proc.new { File.join(root, "..","views") }
  get '/' do
    'Hello BattleshipsApp!'
    erb :index
  end

  get '/game/new' do

    erb :game_new
end

  get'/game' do

    erb :game

  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
