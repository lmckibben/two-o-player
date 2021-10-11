class Question

  def initialize(x, y)
    @question = "What is #{x} plus #{y}?"
    @answer = x + y
  end

  attr_accessor :x, :y
end