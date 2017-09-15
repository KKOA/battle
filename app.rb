# my_app.rb
require 'sinatra/base'

class Battle < Sinatra::Base
  set :sessions, true
  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1] = params[:player1_name]
    session[:player2] = params[:player2_name]
    redirect('/play')
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:play)
  end

  get '/attack' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:attack)
  end
  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
