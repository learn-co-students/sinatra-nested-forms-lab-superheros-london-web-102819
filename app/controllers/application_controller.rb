require "sinatra/base"

class App < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views/") }

  get "/" do
    erb :super_hero
  end

  post "/teams" do
    @team = Team.new(params[:team])
    params[:team][:heroes].each do |details|
      Hero.new(details)
    end

    @heroes = Hero.all
    @hero1 = @heroes[0]
    @hero2 = @heroes[1]
    @hero3 = @heroes[2]

    erb :"team"
  end

  get "/team" do
    erb :"team"
  end
end
