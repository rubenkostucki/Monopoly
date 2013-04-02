class Player

  attr_accessor :lands, :balance, :position, :name

  STARTING_BALANCE = 1000

  def initialize(name)
    @lands = []
    @balance, @position, @name = STARTING_BALANCE, 1, name
  end

  def buy(land)
    @lands << land
    @balance -= land.value
    land.bought_by(self)
  end

  def buy!(land)
    if @balance < land.value
      false
    else
      true
    end
  end

  def pay_rent(land)
      @balance -= land.rent
  end

  def receive_rent(land)
    @balance += land.rent
  end

  def name
    @name.to_s
  end
end
