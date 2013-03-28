class Player

  attr_accessor :lands, :balance, :position

  STARTING_BALANCE = 1000

  def initialize
    @lands = []
    @balance, @position = STARTING_BALANCE, 0
  end

	def buy(land)
		@lands << land
    @balance -= land.value
    land.bought_by(self)
  end

  def pay_rent(land)
    @balance -= land.rent
  end

  def receive_rent(land)
    @balance += land.rent
  end
end