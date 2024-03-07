class Question
  
  attr_reader :num1, :num2

  def initialize
    # => Instance variables that will generate a number between 1 and 20 (inclusive) for each half of the equation.
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def ask_question
    # => Ask the question. Only addition for now.
    "what is #{@num1} + #{@num2}?"
  end
end
