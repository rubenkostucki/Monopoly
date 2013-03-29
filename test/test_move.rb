require 'minitest/autorun'
require './lib/tile'
require './lib/land'
require './lib/player'
require './lib/board'
require './lib/move'
require './lib/dice'

class TestMove < MiniTest::Unit::TestCase

  def setup
    @player = Player.new
    @board = Board.new
    @move = Move.new
  end

  def test_player_moves_tile_5_from_1_when_roll_4
    @move.move(@player, @board, 4)
    assert_equal 5, @player.position
  end

  def test_player_moves_tile_10_from_1_when_roll_9
    @move.move(@player, @board, 9)
    assert_equal 10, @player.position
  end

  def test_player_moves_tile_10_from_3_when_roll_7
    @player.position = 3
    @move.move(@player, @board, 7)
    assert_equal 10, @player.position
  end

  def test_players_moves_tile_3_from_16_whem_roll_3
    @player.position =
    @move.move(@player, @board, 3)
    assert_equal 3, @player.position
  end

end

