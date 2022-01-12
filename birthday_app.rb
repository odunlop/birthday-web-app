require "sinatra"
require "sinatra/base"
require "sinatra/reloader" if development?

class DayCount < Sinatra::Base
  get '/' do
    erb(:index)
  end
  post '/birthday' do 

  end
  
  run! if app_file == $0
end
