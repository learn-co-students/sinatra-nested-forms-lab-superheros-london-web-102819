require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


    get '/' do
        erb :"super_hero"
    end

    post '/teams' do
        
        @heroes = params["team"]["heroes"]
        
        @team = Team.new(params["team"]["name"], params["team"]["motto"])
        @h1 = Hero.new(@heroes[0]["name"], @heroes[0]["power"], @heroes[0]["bio"])
        @h2 = Hero.new(@heroes[1]["name"], @heroes[1]["power"], @heroes[1]["bio"])
        @h3 = Hero.new(@heroes[2]["name"], @heroes[2]["power"], @heroes[2]["bio"])
        
        erb :"team"
        
    end

end
