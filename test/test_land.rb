require 'minitest/autorun'
require './lib/tile'
require './lib/land'
require './lib/player'



class TestLand < MiniTest::Unit::TestCase

  def setup
    @land1 = Land.new("Brussels", 1000)
  end

  def test_available_when_initialized
    assert_equal true, @land1.available?
  end

  def test_not_available_when_bought
    @land1.bought("Ruben")
    assert_equal false, @land1.available?
  end

  def test_land_value_when_initialized
    assert_equal 1000, @land1.value
  end

  def test_rent_price
    assert_equal 100, @land1.rent
  end

  def test_owner_when_bought
    @land1.bought("Ruben")
    assert_equal "Ruben", @land1.owner
  end

end
