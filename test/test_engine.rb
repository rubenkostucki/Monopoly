require 'minitest/autorun'
require 'mocha/setup'
require './lib/tile'
require './lib/land'
require './lib/player'
require './lib/board'
require './lib/dice'
require './lib/move'
require './lib/engine'

class TestEngine < MiniTest::Unit::TestCase

  def setup
    @player1 = Player.new
    @engine = Engine.new
    # @board = Board.new
    # @player2 = Player.new
    # @dice = Dice.new
    # @move = Move.new
  end

  def test_player_position_moves_by_dice_value
    # set up the scene, get ready (optional)
    assert_equal 1, @player1.position
    dice = stub(:roll => 4, :value => 4)
    @engine.stubs(:dice).returns(dice)
    # execute the action under test (required)
    @engine.run
    # check results (required)
    assert_equal @engine.dice.value + 1, @engine.player1.position
  end

end