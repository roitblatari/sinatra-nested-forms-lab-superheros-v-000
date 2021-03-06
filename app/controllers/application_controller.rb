require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        # binding.pry
      @name = params[:team][:name]
      @motto = params[:team][:motto]
      @hero_name = []
      @hero_power = []
      @hero_bio = []
         
      params["team"]["members"].each do |member|
          @hero_name << member["name"] 
          @hero_power << member["power"]
          @hero_bio << member["bio"]  
# binding.pry
      end
      

         erb :team
    end

end
