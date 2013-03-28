require 'minitest/autorun'
require './lib/tile'
require './lib/land'
require './lib/player'
require './lib/board'
require './lib/engine'

class TestEngine < MiniTest::Unit::TestCase

  def setup
    test_player1 = Player.new
    test_player2 = Player.new
    board = Board.new
    @engine = Engine.new(test_player1, test_player2, board)
  end

  def test_game_ready?
    assert_equal true, @engine.ready?
  end

end