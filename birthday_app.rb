require "sinatra"
require "sinatra/reloader" if development?

get '/' do
  "Test screen"
end
get '/birthday' do 
  erb(:index)
end