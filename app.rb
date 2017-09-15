# my_app.rb
require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base
  set :sessions, true
  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1_name])
    $player2 = Player.new(params[:player2_name])
    redirect('/play')
  end

  get '/play' do
    @player1 = $player1
    @player2 = $player2
    erb(:play)
  end

  get '/attack' do
    @player1 = $player1
    @player2 = $player2
    erb(:attack)
  end
  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
