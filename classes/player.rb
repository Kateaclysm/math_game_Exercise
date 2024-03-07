class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def answer_question(answer, current_question)
    # => Get the correct answer:
    correct_answer = current_question.num1 + current_question.num2

    if answer == correct_answer
      puts "Correct! Good job, #{@name}!"
    else 
      @lives -= 1
      puts "Incorrect! Sorry #{@name}, you lose a life. CURRENT LIVES for #{@name}: #{@lives}"
    end
  end
end
