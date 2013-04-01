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
    @board = Board.new
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
    @engine.roll_and_move
    # check results (required)
    assert_equal @engine.dice.value + 1, @engine.player1.position
  end

  def test_player_balance_has_starting_balance
    @engine.print_current_balance
    assert_equal 1000, @engine.player1.balance
  end

  def test_player_buys_land_on_first_move
    @engine.player_action
    assert_equal 1, @engine.player1.lands.count
  end

  def test_player_balance_updated_after_buy_land
    dice = stub(:roll => 4, :value => 4)
    @engine.stubs(:dice).returns(dice)
    @engine.roll_and_move
    @engine.player_action
    assert_equal 500, @engine.player1.balance
  end

  def test_player_buys_second_land
    dice = stub(:roll => 1, :value => 1)
    @engine.stubs(:dice).returns(dice)
    @engine.roll_and_move
    @engine.player_action
    @engine.roll_and_move
    @engine.player_action
    assert_equal 500, @engine.player1.balance
    assert_equal 2, @engine.player1.lands.count
  end

  def test_player_cant_afford_second_land
    dice = stub(:roll => 6, :value => 6)
    @engine.stubs(:dice).returns(dice)
    @engine.roll_and_move
    @engine.player_action
    @engine.roll_and_move
    @engine.player_action
    assert_equal 300, @engine.player1.balance
    assert_equal 1, @engine.player1.lands.count
    # assert_equal false, @engine.player1.buy(@board.tile(@player1.position))
  end
end