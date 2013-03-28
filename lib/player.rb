class Player

  attr_accessor :lands, :balance, :position

  STARTING_BALANCE = 1000

  def initialize
    @lands = []
    @balance, @position = STARTING_BALANCE, 0
  end

	def buy(land)
    if @balance > land.value
		  @lands << land
      @balance -= land.value
      land.bought_by(self)
    else
      @balance = 0
    end
  end

  def pay_rent(land)
    if @balance > land.rent
      @balance -= land.rent
    else
      @balance = 0
    end
  end

  def receive_rent(land)
    @balance += land.rent
  end
end