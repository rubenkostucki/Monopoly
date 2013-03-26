require 'minitest/autorun'
require './lib/land'
require './lib/player'

class TestPlayer < MiniTest::Unit::TestCase

	def test_can_buy_land

		player1 = Player.new("ruben", 100)
		assert_equal 0, player1.view_lands.count #checking @lands array is empty

		land1 = Land.new("Brussels", 1000, 50) #instantiation of the land class with the right arguments
		player1.buy_land(land1) #call the buy land method on the player object with the land1 argument

		assert_equal 1, player1.view_lands.count #now checking that @land array is NOT empty and got 1 item in it

	end

	def test_pays_rent
		player = Player.new('Ruben', 10)
	    player.pay_rent(7)
		assert_equal(3, player.check_balance)
	end

	def test_receives_rent
			player = Player.new('Ruben', 10)
		    player.receive_rent(7)
			assert_equal(17, player.check_balance)
		end

	def test_buys_land_decrease_balance
		player1 = Player.new('Ruben', 10000)
	  land1 = Land.new("Brussels", 1000, 50)

	  player1.buy_land(land1)
	  assert_equal 9000, player1.check_balance

	end

end