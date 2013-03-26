class Land

  attr_reader :value

  def initialize(value)
  @available = true
  @value = value
  end

  def available?
    @available
  end

  def bought
    @available = false
  end

end