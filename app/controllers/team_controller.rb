require 'pry'
class TeamController < App
  get '/' do
    erb :super_hero
  end

  # get '/teams' do
  #   erb :team
  # end

  post '/teams' do

    @team = Team.new(params[:team])

    params[:team][:members].each do |detail|
      Member.new(detail)
    end


    @members = Member.all
    #binding.pry
    erb :team
  end
end
