require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
        erb :'super_hero'
    end

    post '/teams' do
        #puts params
        @teamname=params[:team][:name]
        @teammotto=params[:team][:motto]
        @heroes=params[:team][:heroes]
        #puts heroes

        erb :team
    end

end
