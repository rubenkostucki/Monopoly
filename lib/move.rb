class Move

  def move(player, board, number_of_places)
    new_position = player.position + number_of_places
    player.position = new_position % board.number_of_tiles
  end

end