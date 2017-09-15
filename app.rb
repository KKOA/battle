# my_app.rb
require 'sinatra/base'

class Battle < Sinatra::Base
  # ... app code here ...

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
