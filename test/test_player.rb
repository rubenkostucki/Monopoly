require 'minitest/autorun'
require './lib/tile'
require './lib/land'
require './lib/player'



class TestPlayer < MiniTest::Unit::TestCase

	def setup
		create_player
    @land1 = Land.new("Brussels", 1, 900)
    @land2 = Land.new("LONDON", 2, 90000)
	end

	def test_no_lands_when_initialized
		assert_equal 0, @player1.lands.count
	end

  def test_position_is_zero_when_initialized
    assert_equal 0, @player1.position
  end

  def test_balance_when_initialized
    assert_equal start_balance, @player1.balance
  end

  def test_has_lands_when_bought
    @player1.buy(@land1)
    assert_equal 1, @player1.lands.count
  end

  def test_balance_decreases_when_land_bought
    @player1.buy(@land1)
    assert_equal 100, @player1.balance
  end

  def test_becomes_owner_when_land_bought
    @player1.buy(@land1)
    assert_equal @land1, @player1.lands.last
    assert_equal @player1, @land1.owner
  end

  def test_cant_afford_to_buy_land2
    @player1.buy(@land2)
    assert_equal 0, @player1.balance
  end

  def test_balance_decreases_when_rent_payed
    @player1.pay_rent(@land1)
    assert_equal 910, @player1.balance
  end

  def test_balance_increases_when_rent_received
    @player1.receive_rent(@land1)
    assert_equal 1090, @player1.balance
  end

  def test_cant_pay_rent
    @player1.pay_rent(@land2)
    assert_equal 0, @player1.balance
  end

  private

  def create_player
    @player1 = Player.new
  end

  def start_balance
    Player::STARTING_BALANCE
  end
end