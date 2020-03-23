require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
      heros = params[:team][:members]

      heros.each do |hero|
        Superhero.new({name: hero[:name], power: hero[:power], bio: hero[:bio]})
      end
      @superheroes = Superhero.all

      erb :team
    end
end
