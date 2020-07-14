require_relative 'config/environment'

class App < Sinatra::Base



  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    pig_new = PigLatinizer.new
    @piglat = pig_new.piglatinize(params[:user_phrase])
    erb :piglatinize
  end

end
