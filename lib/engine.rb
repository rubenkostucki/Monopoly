
class Engine

  attr_reader :dice, :take_turn, :move, :board
  attr_reader :player1, :player2

  def initialize
    @player1 = Player.new
    @player2 = Player.new
    @board = Board.new
    @dice = Dice.new
    @move = Move.new
    # @take_turn = TakeTurn.new
  end

  def run
    3.times do
        # take_turn.current_player
        roll_and_move
        print_current_balance
        player_action
        # take_turn.next_player
    end
  end

  def roll_and_move
    dice.roll
    puts "Player1 has rolled #{dice.value}"
    move.move(player1, board, dice.value)
    puts "Player1 is now on position #{player1.position}, which is #{board.tile(player1.position)}"
  end

  def print_current_balance
    puts "Your balance is now: #{player1.balance}"
  end

  def player_action
    if board.tile(player1.position).available? && player1.buy!(board.tile(player1.position))

      player1.buy(board.tile(player1.position))
      puts "Player1 has bought #{board.tile(player1.position)} and now owns #{player1.lands}"

    elsif player1.buy!(board.tile(player1.position)) == false

      puts "Player1 can't afford to buy this land"

    elsif board.tile(player1.position).bought_by(player2)
      puts "You are paying rent!!! #{board.tile(player1.position)}"

      player1.pay_rent(board.tile(player1.position))
      player2.receive_rent(board.tile(player1.position))
    end
  end
end