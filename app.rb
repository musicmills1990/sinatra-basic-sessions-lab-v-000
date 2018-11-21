require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :sessions_secret, "aweltnawfl124lr4tj5kjnwd"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    session[:item] = params[:item]
    binding.pry
    @session = session
    erb :checkout
  end

end
