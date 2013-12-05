require 'sinatra'
require 'json'

set :public_dir, File.dirname(__FILE__) + '/static'

class MyApp < Sinatra::Base

    set :app_file, __FILE__ 
    set :root, File.dirname( __FILE__ ) 
    set :public_dir, File.dirname( __FILE__ ) + '/static' 

    get '/' do

        @name = "Nick"
        @title = "Developer"

        erb :'index.html'
    end

    get '/presentations/?' do
        @name = "Nick Otter"
        @title = "Developer"

        erb :'presentation.html'
    end

    get '/presentations/:pres' do
        @name = "Nick Otter"
        @title = "Developer"

        if params[:pres] == "kickshot-design-review" then
            erb :'kickshot-design-review.html'
        else
            erb :'presentation.html'
        end

        
    end
end