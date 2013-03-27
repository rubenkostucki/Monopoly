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

  def test_balance_when_initialized
    assert_equal 1000, @player1.balance
  end

    def test_has_lands_when_bought
    @player1.buy(@land1)
    assert_equal 1, @player1.lands.count
  end

  def test_balance_decreases_when_land_bought
    @player1.buy(@land1)
    assert_equal 100, @player1.balance
  end

  def test_balance_decreases_when_rent_payed
    @player1.pay_rent(@land1)
    assert_equal 910, @player1.balance
  end

  def test_balance_increases_when_rent_received
    @player1.receive_rent(@land1)
    assert_equal 1090, @player1.balance
  end

  def test_becomes_owner_when_land_bought
    @player1.buy(@land1)
    assert_equal @land1, @player1.lands.last
    assert_equal @player1, @land1.owner
  end
end