require 'sinatra'

class Server < Sinatra::Base
  get '/health' do
    'ok'
  end
end
