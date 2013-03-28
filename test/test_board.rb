require 'minitest/autorun'
require './lib/tile'
require './lib/land'
require './lib/player'
require './lib/board'

class TestBoard < MiniTest::Unit::TestCase

  def setup
    @board = Board.new
  end

  def test_number_of_tiles_when_initialized
    assert_equal  16,  @board.number_of_tiles
  end

  def test_tile_16_is_London
    assert_equal  "London",  @board.tile(16).name
  end

  def test_tile_16_has_position_16
    assert_equal  16,  @board.tile(16).position
  end

  def test_tile_16_has_value_1600
    assert_equal  1600,  @board.tile(16).value
  end

  def test_tile_15_is_Paris
    assert_equal  "Paris",  @board.tile(15).name
  end

  def test_tile_15_has_position_15
    assert_equal  15,  @board.tile(15).position
  end

  def test_tile_15_has_value_1500
    assert_equal  1500,  @board.tile(15).value
  end

end
