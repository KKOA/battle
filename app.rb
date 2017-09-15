# my_app.rb
require 'sinatra/base'

class Battle < Sinatra::Base
  # ... app code here ...
  get '/' do
    erb(:index)
  end

  post '/names' do
    @player1 = params[:player1_name]
    @player2 = params[:player2_name]
    erb(:play)
  end
  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
