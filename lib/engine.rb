
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
    dice.roll
    move.move(player1, board, dice.value)
  end
end
