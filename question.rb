class Question
  def initialize
    @number1 = rand(20)
    @number2 = rand(20)
    @sum = @number1 + @number2
  end
  def ask_question
    puts "what does #{@number1} + #{@number2} equal?"
  end

  
end
# number = Question.new
# puts  number