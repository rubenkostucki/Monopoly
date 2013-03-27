class Land < Tile

  attr_reader :value
  attr_accessor :owner

  def initialize(name, value)
  super(name)
  @available = true
  @value = value
  end

  def available?
    @available
  end

  def bought(owner)
    @available = false
    @owner = owner
  end

  def rent
    @rent = @value / 10
  end

end