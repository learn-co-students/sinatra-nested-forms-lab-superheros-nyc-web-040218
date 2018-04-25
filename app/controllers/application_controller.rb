require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      Team.new(params[:team][:name], params[:team][:motto])
      
      params[:member].each do |member|
        Member.new(member[:name], member[:power], member[:bio])
      end

      erb :team
    end

end
