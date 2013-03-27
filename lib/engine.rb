class Engine
  def run
    land1 = Land.new("Brussels", 1000, 50)
    land2 = Land.new("London", 10000, 500)

    player1 = Player.new("Ruben", 5000)
    player2 = Player.new("Leo", 5000)

    puts player1.buy_land(land1)

    puts land1.available?

    puts player1.view_lands.inspect

    puts player1.check_balance

    player1.pay_rent(land1.calculate_rent)
  end
end
