require './tile'
require './land'
require './player'
require './move'
require './board'
require './dice'
require './turn'
require './engine'

# begin
#   engine = Engine.new
#   engine.run
# rescue Exception => e
#   puts "something's gone wrong"
#   raise e
# end

engine = Engine.new
engine.run