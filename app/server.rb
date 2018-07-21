require 'sinatra'

class Server < Sinatra::Base
  get '/health' do
    'ok'
  end

  get '/article' do
    web_page = WebPage.new params[:url]
    article = web_page.article
    article.title
  end
end
