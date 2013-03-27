class Player

  attr_accessor :lands, :balance

  def initialize
    @lands = []
    @balance = 1000
  end

	def buys(land)
		@lands << land
    @balance = @balance - land.value
  end

end