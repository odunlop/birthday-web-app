require "sinatra"
require "sinatra/base"
require "sinatra/reloader" if development?
require "./lib/birthday_checker"

class DayCount < Sinatra::Base

  get '/' do
    erb(:index)
  end
  post '/birthday' do 
    @name = params[:name]
    birthday = BirthdayChecker.new(params[:day], params[:month])
    @days_left = birthday.days_left
    
    erb(:countdown)
  end
  
  run! if app_file == $0
end
