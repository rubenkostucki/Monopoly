
class Engine

  attr_reader :dice, :take_turn, :move, :board, :player1, :player2

  def initialize
    @player1 = Player.new("Ruben")
    @player2 = Player.new("Sam")
    @player3 = Player.new("Rob")
    @player4 = Player.new("Ben")
    @player5 = Player.new("Leo")
    @players = [@player1, @player2, @player3, @player4, @player5]
    @board = Board.new
    @dice = Dice.new
    @move = Move.new
    @take_turn = Turn.new(@players)
    @end = 0
  end

  def run
    until @end == 1 do
      sleep 0.05
      take_turn.current_player
      game_over
      roll_and_move
      print_current_balance
      player_action
      print_current_balance
      elimination
      take_turn.next_player
      puts "------------------------"
    end
  end

  def roll_and_move
    dice.roll
    puts "#{take_turn.current_player.name} has rolled #{dice.value}"
    move.move(take_turn.current_player, board, dice.value)
    puts "#{take_turn.current_player.name} is now on position #{take_turn.current_player.position}, which is #{board.tile(take_turn.current_player.position)}"
  end

  def print_current_balance
    puts "Your balance is now: #{take_turn.current_player.balance}"
  end

  def current_land
    board.tile(take_turn.current_player.position)
  end

  def player_action
    if current_land.available? && take_turn.current_player.buy!(current_land)

      take_turn.current_player.buy(current_land)
      puts "#{take_turn.current_player.name} has bought #{current_land} and now owns #{take_turn.current_player.lands}"

    elsif current_land.available? == true && take_turn.current_player.buy!(current_land) == false
      puts "#{take_turn.current_player.name} can't afford to buy this land"

    elsif current_land.available? == false && current_land.owner == take_turn.current_player
        puts "Welcome home buddy"

    elsif current_land.available? == false && current_land.owner != take_turn.current_player
      puts "You are paying rent to #{current_land.owner.name}"

      take_turn.current_player.pay_rent(current_land)
      current_land.owner.receive_rent(current_land)
    end
  end

  def elimination
    if take_turn.current_player.balance < 0
      puts "#{take_turn.current_player.name} has lost due to insufficient funds to continue playing"
      sleep 2
      @players.delete(take_turn.current_player)
    end
  end

  def game_over
    if @players.size == 1
      puts "#{take_turn.current_player.name} is the WINNER!!!"
      @end = 1

    end
  end
end
