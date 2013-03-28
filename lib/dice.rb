class Dice

  attr_reader :value

  def roll
    @value = rand(6) + 1
  end

end