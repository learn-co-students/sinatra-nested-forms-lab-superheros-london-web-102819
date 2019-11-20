class Team
  attr_accessor :name, :motto

  @@all = []

  def initialize(parmas)
    @name = parmas[:name]
    @motto = parmas[:motto]
    @@all << self
  end

  def self.all
    @@all
  end
end
