require 'sinatra/base'
require_relative './lib/bookmark'
require 'pg'

class BookmarkManager < Sinatra::Base
  enable
  get '/' do
    erb :index
  end

  get '/add_bookmark' do
    erb :add_bookmark
  end

  post '/save_url' do
    Bookmark.create(url: params[:url], title: params[:title])
    redirect('/bookmarks')
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  run! if app_file == $0
end
