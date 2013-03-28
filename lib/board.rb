

class Board

  attr_reader :tiles

  def initialize
    @tiles = []
    build_board
  end

  def number_of_tiles
    @tiles.count
  end

  def tile(position)
    @tiles[position-1]
  end

  private

  def build_board
    @tiles << Land.new("Athens", 1, 100)
    @tiles << Land.new("Ankara", 2, 200)
    @tiles << Land.new("Warsaw", 3, 300)
    @tiles << Land.new("Budapest", 4, 400)
    @tiles << Land.new("Rome", 5, 500)
    @tiles << Land.new("Madrid", 6, 600)
    @tiles << Land.new("Amsterdam", 7, 700)
    @tiles << Land.new("Brussels", 8, 800)
    @tiles << Land.new("Copenhagen", 9, 900)
    @tiles << Land.new("Vienna", 10, 1000)
    @tiles << Land.new("Oslo", 11, 1100)
    @tiles << Land.new("Stockholm", 12, 1200)
    @tiles << Land.new("Zurich", 13, 1300)
    @tiles << Land.new("Frankfurt", 14, 1400)
    @tiles << Land.new("Paris", 15, 1500)
    @tiles << Land.new("London", 16, 1600)
  end

end

