require './tile'
require './land'
require './player'
require './engine'

board = Board.new
ruben = Player.new
leo = Player.new

engine = Engine.new

engine.ready?

engine.run



