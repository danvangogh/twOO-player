class Question
  attr_accessor :num_1, :num_2, :answer

  def show_question
    @num_1 = rand(0...10)
    @num_2 = rand(0...10)
    @answer = @num_1 + @num_2
    puts "What is the total of #{@num_1} and #{@num_2}"
  end

  def check_answer(useranswer)
    @answer == useranswer
  end
end
