
class Engine

  attr_reader :dice, :take_turn, :move, :board, :player1, :player2

  def initialize
    @player1 = Player.new
    @player2 = Player.new
    @players = [@player1, @player2]
    @board = Board.new
    @dice = Dice.new
    @move = Move.new
    @take_turn = Turn.new(@players)
  end

  def run
    3.times do
        take_turn.current_player
        roll_and_move
        print_current_balance
        player_action
        take_turn.next_player
    end
  end

  def roll_and_move
    dice.roll
    puts "#{take_turn.current_player} has rolled #{dice.value}"
    move.move(take_turn.current_player, board, dice.value)
    puts "#{take_turn.current_player} is now on position #{take_turn.current_player.position}, which is #{board.tile(take_turn.current_player.position)}"
  end

  def print_current_balance
    puts "Your balance is now: #{take_turn.current_player.balance}"
  end

  def player_action
    if board.tile(take_turn.current_player.position).available? && take_turn.current_player.buy!(board.tile(take_turn.current_player.position))

      take_turn.current_player.buy(board.tile(take_turn.current_player.position))
      puts "#{take_turn.current_player} has bought #{board.tile(take_turn.current_player.position)} and now owns #{take_turn.current_player.lands}"

    elsif take_turn.current_player.buy!(board.tile(take_turn.current_player.position)) == false

      puts "#{take_turn.current_player} can't afford to buy this land"

    elsif board.tile(take_turn.current_player.position).bought_by(take_turn.next_player)
      puts "You are paying rent!!! #{board.tile(take_turn.current_player.position)}"

      take_turn.current_player.pay_rent(board.tile(take_turn.current_player.position))
      take_turn.next_player.receive_rent(board.tile(take_turn.current_player.position))
    end
  end
end