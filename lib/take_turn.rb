class Turn

  attr_reader :players

  def initialize(players)
    @players = players
    @current_player_indice = 0
  end

  def current_player
    players[@current_player_indice]
  end

  def next_player
    @current_player_indice = (@current_player_indice + 1) % @players.size
    current_player
  end
end