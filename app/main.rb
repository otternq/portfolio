require 'sinatra'
require 'json'

set :public_dir, File.dirname(__FILE__) + '/static'

class MyApp < Sinatra::Base

    set :app_file, __FILE__ 
    set :root, File.dirname( __FILE__ ) 
    set :public_dir, File.dirname( __FILE__ ) + '/static' 

    get '/' do

        @name = "Nick Otter"
        @title = "Developer"

        erb :'index.html'
    end
end