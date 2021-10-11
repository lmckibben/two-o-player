class Question

  def initialize(nums)
    x = nums[0]
    y = nums[1]
    @question = "What is #{x} plus #{y}?"
    @answer = x + y
  end
  
end