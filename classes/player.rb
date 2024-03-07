class Player

  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3 # => Set this to however many lives you want. 3 for brevity.
  end

  def answer_question(answer, current_question)
    # => Get the correct answer:
    correct_answer = current_question.num1 + current_question.num2

    if answer == correct_answer
      # => If answer is correct:
      puts "Correct! Good job, #{@name}!" 
    else 
      # => If answer is INCORRECT...
      @lives -= 1 #=> Remove a life.
      puts "Incorrect! Sorry #{@name}, you lose a life. CURRENT LIVES for #{@name}: #{@lives}/3" # => Update current player on lives remaining.
    end
  end
end
