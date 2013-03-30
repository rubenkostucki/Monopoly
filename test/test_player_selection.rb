require 'minitest/autorun'
require './lib/player'
require './lib/player_selection'

class TestPlayerSelection < MiniTest::Unit::TestCase

  def setup
    @playerselection = PlayerSelection.new
  end

  def test_player1_selected_when_initialized
    assert_equal "player1", @playerselection.current_player
  end
end