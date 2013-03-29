
class Engine

  attr_reader :dice, :player1, :move, :board

  def initialize
    @player1 = Player.new
    @board = Board.new
    @player2 = Player.new
    @dice = Dice.new
    @move = Move.new
  end

  def run
    roll_and_move
    print_current_balance
    action_on_current_position
  end

  def roll_and_move
    dice.roll
    puts "#{Player}has rolled #{dice.value}"
    move.move(player1, board, dice.value)
    puts "#{Player} is now on position #{player1.position}, which is #{board.tile(player1.position).to_s}"
  end

  def print_current_balance
    puts "#{Player}'s balance is #{player1.balance}"
  end

  def action_on_current_position
    player1.buy(board.tile(player1.position))
    puts "Player1 has bought #{board.tile(player1.position).to_s}"
    print_current_balance
  end

  def

  end
