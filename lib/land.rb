class Land < Tile

  attr_reader :value, :position
  attr_accessor :owner

  def initialize(name, position, value)
  super(name, position)
  @available, @value = true, value
  end

  def available?
    @available
  end

  def bought_by(owner)
    @available = false
    @owner = owner
  end

  def rent
    @rent = @value / 10
  end

end