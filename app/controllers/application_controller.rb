require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :"super_hero"
    end

    post '/team' do
      @team = Team.new(params[:team])

      params[:team][:members].each do |details|
        Member.new(details)
      end
      @members = Member.all
      # binding.pry
      erb :"team"
    end
    # post '/team' do
    #   team0 = Team.new(params[:team])
    #   member0 = Member.new(params[:team][:members][0])
    #   member1 = Member.new(params[:team][:members][1])
    #   member2 = Member.new(params[:team][:members][2])
    # #   binding.pry
    #   erb :"team"
    # end
end
