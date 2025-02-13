require 'sinatra/base'
require 'sinatra/flash'
require_relative './lib/bookmark'
require_relative './database_connection_setup'
require_relative './lib/url_checker'
require_relative './lib/comment'

class BookmarkManager < Sinatra::Base
  enable :sessions, :method_override
  include UrlChecker
  register Sinatra::Flash
  get '/' do
    erb :index
  end

  get '/add_bookmark' do
    erb :add_bookmark
  end

  delete '/bookmarks/:id' do
    Bookmark.delete(id: params[:id])
    redirect '/bookmarks'
  end

  patch '/bookmarks/:id' do
    if valid_url?(params[:url])
      Bookmark.update(id: params[:id], title: params[:title], url: params[:url])
      redirect('/bookmarks')
    else
      flash[:notice] = "You have submitted an invalid url"
    end
  end

  get '/bookmarks/:id/edit' do
    @bookmark = Bookmark.find(id: params[:id])
    @bookmark_id = params[:id]
    erb :'bookmarks/edit'
  end

  post '/save_url' do
    if valid_url?(params[:url])
      Bookmark.create(url: params[:url], title: params[:title])
      redirect('/bookmarks')
    else
      flash[:notice] = "You have submitted an invalid url"
    end
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  ### comments pages

  get '/bookmarks/:id/comments/new' do
    @bookmark = Bookmark.find(id: params[:id])
    @bookmark_id = params[:id]
    erb :'comments/new'
  end

  post '/bookmarks/:id/comments/save' do
    Comment.create(text: params[:comment], bookmark_id: params[:id])
    redirect '/bookmarks'
  end

  get '/bookmarks/:id/comments' do
    #@bookmark_id = params[:id]
    @comments = Comment.show_for(params[:id])
    erb :'comments/view'

  end


  run! if app_file == $0
end
