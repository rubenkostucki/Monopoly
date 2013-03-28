class Engine

  def initialize
    @board?
  end

  def run
    should only have method names
    get_user_decision
  end

  private #because no other objects should be able to call any of these methods


  def get_user_decision
    decision = gets
    puts decision
  end


end


Start Game

- Check all players balance
- Check all lands and which one are empty

Player1

- Run Dice
- Move to tile
- Take action
  - Buy land
  - Pay pay rent









land1 = Land.new("Brussels", 1000)
    land2 = Land.new("London", 10000)

    player1 = Player.new("Ruben", 5000)
    player2 = Player.new("Leo", 5000)

    puts player1.buy_land(land1)

    puts land1.available?

    puts player1.view_lands.inspect

    puts player1.check_balance

    player1.pay_rent(land1.calculate_rent)