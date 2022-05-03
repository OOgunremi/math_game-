require './question'

class Game
  def initialize(name)
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
  end
  def start
    puts '______Game started________'
    question  = Question.new
    question.ask_question
    response = $stdin.gets.chomp
    if response.to_i == question.confirm_answer
      puts 'Correct'
    else
      puts 'Wrong answer'
    end
    



    # answer = $stdin.gets.chomp


  end
end


