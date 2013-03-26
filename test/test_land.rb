require 'minitest/autorun'
require './lib/tile'
require './lib/player'
require './lib/land'


class TestLand < MiniTest::Unit::TestCase

  def setup
    @land1 = Land.new(100)
  end

  def test_available_when_initialized
    assert_equal true, @land1.available?
  end

  def test_not_available_when_bought
    @land1.bought
    assert_equal false, @land1.available?
  end

  def test_land_value_when_initialized
    assert_equal 100, @land1.value
  end

end
