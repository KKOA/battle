# my_app.rb
require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  set :sessions, true
  get '/' do
    erb(:index)
  end

  post '/names' do
    if (params[:player1_name] == '' || params[:player2_name] == '')
      session['err'] = 'Player name cannot be empty'
      redirect('/')
    end
    player1 = Player.new(params[:player1_name])
    player2 = Player.new(params[:player2_name])
    $game = Game.new(player1, player2)
    redirect('/play')
  end

  get '/play' do
    @player1 = $game.player1
    @player2 = $game.player2
    @current_player = $game.current_turn
    erb(:play)
  end

  get '/attack' do

    @player1 = $game.player1
    @player2 = $game.player2
    $game.attack($game.opponent)
    # $game.attack(@player2)
    p @player1
    erb(:attack)
  end

  post '/swap' do
    $game.swap_turn
    redirect('/play')
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
