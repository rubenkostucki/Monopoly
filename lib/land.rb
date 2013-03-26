require './lib/tile'
require './lib/player'

class Land < Tile

	def initialize(name, value_for_purchase, rent_price)

		@value_for_purchase = value_for_purchase
		@rent_price = rent_price
		super(name)
		@available = true
		@owner = ""

	end

	def available?
		@available
	end

	def sell_to_player
		@value_for_purchase
	end

	def calculate_rent
		@rent_price
	end

	def to_s
		"#{@name}, #{@value_for_purchase}, #{@rent_price}"
	end

	def view_value_for_purchase
		@value_for_purchase
	end

	def owner(player_name)
		@
end