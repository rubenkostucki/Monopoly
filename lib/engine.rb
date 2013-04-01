
class Engine

  attr_reader :dice, :player1, :move, :board

  def initialize
    @player1 = Player.new
    @board = Board.new
  #   @player2 = Player.new
    @dice = Dice.new
    @move = Move.new
  end

  # def run
  #   1.times do
  #       roll_and_move
  #       print_current_balance
  #       player_action
  #   end
  # end

  def roll_and_move
    dice.roll
    # puts "Player1 has rolled #{dice.value}"
    move.move(player1, board, dice.value)
    # puts "Player1 is now on position #{@player1.position}, which is #{board.tile(player1.position).to_s}"
  end

  def print_current_balance
    player1.balance
    # puts "Player1's balance is #{player1.balance}"
  end

  def player_action
    player1.buy(board.tile(player1.position))
  end

end






 # if board.tile(player1.position).available? && player1.buy(board.tile(player1.position)) == false
    #   puts "Player1 hasn't bought anything"
    # else
    #   player1.buy(board.tile(player1.position))
    #   puts "Player1 has bought #{board.tile(player1.position).to_s} and now owns #{player1.lands}"
    # end
    # elsif board.tile(player1.position).available? == false &&
  # end