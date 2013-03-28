require 'minitest/autorun'
require './lib/tile'
require './lib/land'
require './lib/player'
require './lib/board'

class TestBoard < MiniTest::Unit::TestCase

  def setup
    @tile1 = Board.new(tile1)
  end

  def test_tile1_first_in_array
    assert_equal  @tile1, tile[0]
  end

end
