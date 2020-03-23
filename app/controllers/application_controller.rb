require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team])

      params[:team][:members].each do |details|
        Superheroes.new(details)
      end
      @heros = Superheroes.all

      erb :team
    end
end
