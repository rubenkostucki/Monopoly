
class Engine

  attr_reader :dice, :players, :move, :board

  def initialize
    @player = [Player.new, Player.new]
    @board = Board.new
    @dice = Dice.new
    @move = Move.new
    @current_player_indice = 1
  end

  def run
    3.times do
        roll_and_move
        print_current_balance
        player_action
    end
  end

  def current_player
    return @players[@current_player_indice]
  end

  def next_player
    @current_player_indice = (@current_player_indice+1) % @players.size
  end

  def roll_and_move
    dice.roll
    move.move(player1, board, dice.value)
  end

  def print_current_balance
    player1.balance
  end

  def player_action
    player1.buy(board.tile(player1.position))
  end
end


    # puts "Player1 has rolled #{dice.value}"

    # puts "Player1 is now on position #{@player1.position}, which is #{board.tile(player1.position).to_s}"


    # puts "Player1's balance is #{player1.balance}"


 # if board.tile(player1.position).available? && player1.buy(board.tile(player1.position)) == false
    #   puts "Player1 hasn't bought anything"
    # else
    #   player1.buy(board.tile(player1.position))
    #   puts "Player1 has bought #{board.tile(player1.position).to_s} and now owns #{player1.lands}"
    # end
    # elsif board.tile(player1.position).available? == false &&
  # end