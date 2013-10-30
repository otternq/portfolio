require 'sinatra'
require 'json'


class MyApp < Sinatra::Base

    get '/' do 
        set :static, true
        set :public, File.dirname(__FILE__) + '/static'
    end
end