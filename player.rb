class Player
  def initialize(name)
    @name = name
    @lives = 3
  end

  attr_reader :lives, :name

  def lose_life
    @lives -= 1
    @lives
  end
end