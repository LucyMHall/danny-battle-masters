require 'sinatra'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
   erb :index
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    session[:name] = "Wallace"
    redirect '/play'
  end

  get '/play' do
    p "SESSIONS: #{session[:player_1]}"
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]    
    erb :play
  end

  run! if app_file == $0

end
