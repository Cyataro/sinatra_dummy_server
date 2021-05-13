require 'sinatra'
set :show_exceptions, false

get '/' do
  'Hello world!'
end

get '/timeout' do
  sleep 100
end

get '/client-error' do
  status 404
  'client error'
end

get '/server-error' do 
  status 500
  'error'
end
