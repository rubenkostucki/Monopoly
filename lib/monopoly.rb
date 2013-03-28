require './tile'
require './land'
require './player'
require './engine'

begin
  engine = Engine.new
  engine.run
rescue Exception => e
  puts "something's gone wrong"
  raise e
end
