require 'sinatra'


class Battle < Sinatra::Base
  get '/' do
    "Testing Infrastructure working!"
  end

  run! if app_file == $0

end
