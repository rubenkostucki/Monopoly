require 'minitest/autorun'
require './lib/tile'
require './lib/land'
require './lib/player'


class TestPlayer < MiniTest::Unit::TestCase

	def setup
		@player1 = Player.new
	end

	def test_no_lands_when_initialized
		assert_equal 0, @player1.lands.count
	end

	def test_has_lands_when_bought
    @player1.buys("Brussels")
		assert_equal 1, @player1.lands.count
	end

end