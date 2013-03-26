require 'minitest/autorun'
require './lib/tile'
require './lib/player'
require './lib/station'


class TestLand < MiniTest::Unit::TestCase

  def ownership
    land1 = Land.new("Brussels", 1000, 50)
    player1 = Player.new("ruben", 100)

    land1.owner(player1)

    assert_equal "ruben", land1.check_ownership
  end
end
