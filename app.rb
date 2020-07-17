require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        "Pig Latinizer!"
        erb :user_input
    end
    
    post '/piglatinize' do 
        pl=PigLatinizer.new
        @text = pl.piglatinize(params[:user_phrase])
        erb :new_view
    end
end