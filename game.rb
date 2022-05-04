
class Game
  def initialize(name)
    @name = name
    @player_1 = Player.new('Player 1')
    @player_2 = Player.new('Player 2')
  end

  def start
    puts '______Game started________'
    play
  end


  def play
    @player_1.new_question
    check_score
    @player_2.new_question
    check_score
   result
    puts '---------NEW TURN---------'
    play
  end

  def result
    puts "Player 1: #{@player_1.scores}/3 vs Player 2: #{@player_2.scores}/3"
  end

  def check_score
    if @player_1.lost_game
      winner(@player_2)
    elsif @player_2.lost_game
      winner(@player_1)
    end
  end

  def winner(player)
    puts "#{player.name} wins with the score of #{player.scores}/3"
    puts '---------GAME OVER---------'
    puts 'God bye!'
    exit
  end


end