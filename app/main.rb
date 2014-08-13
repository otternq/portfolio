require 'sinatra'
require 'json'

class MyApp < Sinatra::Base

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
        elsif params[:pres] == "kickshot-final" then
            erb :'kickshot-final.html'
        else
            erb :'presentation.html'
        end


    end

    get '/boom' do
      content_type :json
      '{
        "lists": [
          {
            "url": [
              {
                "github": "http://github.com/otternq"
              },
              {
                "portfolio": "http://nickotter.com"
              }
            ]
          }
        ]
      }'

    end
end
