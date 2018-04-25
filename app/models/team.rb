require 'pry'
class Team
  attr_reader :name, :motto
  TEAM = []

  def initialize(params)
    #binding.pry
    @name = params[:name]
    @motto = params[:motto]
    TEAM << self
  end

  def self.all
    TEAM
  end
end
