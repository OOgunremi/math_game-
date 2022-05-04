class Player
  attr_reader :name, :scores
  def initialize(name)
    @name = name
    @scores = 3
  end

  def lose_score
    @scores -= 1
  end

  def lost_game
    @scores == 0
  end

  def new_question
    new_question = Question.new
    new_question.question(name)
    print '> '
    
    @player_response = $stdin.gets.chomp
    if new_question.answer(@player_response.to_i)
      puts 'Yes! You are correct.'
    else
      puts 'Seriously? No!'
      lose_score
    end
  end
end