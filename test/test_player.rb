require 'minitest/autorun'
require './lib/tile'
require './lib/land'
require './lib/player'


class TestPlayer < MiniTest::Unit::TestCase

	def setup
		@player1 = Player.new
    @land1 = Land.new("Brussels", 900)
	end

	def test_no_lands_when_initialized
		assert_equal 0, @player1.lands.count
	end

	def test_has_lands_when_bought
    @player1.buys(@land1)
		assert_equal 1, @player1.lands.count
	end

  def test_balance_when_initialized
    assert_equal 1000, @player1.balance
  end

  def test_balance_decrease_when_land_bought
    @player1.buys(@land1)
    assert_equal 100, @player1.balance
  end

end