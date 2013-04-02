class TakeTurn

  attr_reader :player

  def initialize
    @player = [@player1, @player2]
    @player1 = Player.new
    @player2 = Player.new
    @current_player_indice = 0
  end

  def current_player
    player[@current_player_indice]
  end

  def next_player
    @current_player_indice = (@current_player_indice + 1) % @player.size
    current_player
  end

  # def to_s
  #   "#{}"
  # end

end