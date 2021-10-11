class Player
  def def initialize(name)
    @lives = 3
  end

  attr_accessor :lives

  def lose_life
    @lives -= 1
  end
end