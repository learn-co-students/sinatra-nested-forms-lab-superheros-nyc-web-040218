class Member
  attr_accessor :name, :power, :biography
  @@all = []

  def initialize(member_hash)
    @name = member_hash[:name]
    @power = member_hash[:power]
    @biography = member_hash[:biography]
    @@all << self
  end

  def self.all
    @@all
  end
end
