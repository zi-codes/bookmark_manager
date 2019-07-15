require 'sinatra/base'
require_relative './lib/manager'

class BookmarkManager < Sinatra::Base
  enable
  get '/' do
    'Hello world'
  end

  get '/bookmarks' do
    @bookmarks = Manager.new
    erb :bookmarks
  end

  run! if app_file == $0
end
