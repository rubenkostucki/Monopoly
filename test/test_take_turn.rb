require 'minitest/autorun'
require './lib/engine'
require './lib/player'
require './lib/take_turn'

class TestTakeTurn < MiniTest::Unit::TestCase

  def setup
    @take_turn = TakeTurn.new
  end

  def test_players_in_array_when_initialized
    assert_equal 2, @take_turn.players.count
  end

  # def test_current_player_player_1
  #   @take_turn.current_player
  #   assert_equal "player1", @take_turn.players.first
  # end

  # def test_next_player_player_2
  #   assert_equal @player12, @take_turn.next_player
  # end
end