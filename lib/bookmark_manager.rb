require 'sinatra/base'
require 'data_mapper'
require 'dm-postgres-adapter'

class BookmarkManager < Sinatra::Base


    get '/links' do
     @links = Link.all?
     erb :'links/index'
    end

    run! if app_file == $0

    set :views, proc { File.join(root, '..', 'views') }
  end
