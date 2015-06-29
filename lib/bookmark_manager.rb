require 'sinatra/base'
require 'data_mapper'
require 'dm-postgres-adapter'

class BookmarkManager < Sinatra::Base


    get '/links' do
     @links = Link.all?

     erb :'links/index'
    end

    post '/links' do
      Link.create(url: params[:url], title: params[:title])
      redirect to('/links')
    end

    get '/links/new' do

      erb :links_new

    end

    run! if app_file == $0

    set :views, proc { File.join(root, '..', 'views') }
  end
