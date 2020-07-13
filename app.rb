require_relative 'config/environment'

class App < Sinatra::Base

  # Build a form to take user input in user_input.erb. Show that form using a GET request at /.

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pl = PigLatinizer.new
    @latinized_phrase = pl.piglatinize(params["user_phrase"])

    erb :piglatinize
  end
end