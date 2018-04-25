class Member
  attr_reader :name, :power, :bio
  MEMBER = []

  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    MEMBER << self
  end

  def self.all
    MEMBER
  end
end
