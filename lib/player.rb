class Player

  attr_accessor :lands, :balance

  def initialize
    @lands = []
    @balance = 1000
  end

	def buy(land)
		@lands << land
    @balance = @balance - land.value
  end

  def pay_rent(land)
    @balance = @balance - land.rent
  end

  def receive_rent(land)
    @balance = @balance + land.rent
  end

end