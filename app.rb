# my_app.rb
require 'sinatra/base'

class Battle < Sinatra::Base
  # ... app code here ...
  get '/' do
    erb(:index)
  end
  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
