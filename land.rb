require './tile'

class Land < Tile

	def initialize(name, value_for_purchase, rent_price)

		@value_for_purchase = value_for_purchase
		@rent_price = rent_price
		super(name)
		@available = true
	end

	def available?


	end

	def sell_to_player
	
	end

	def calculate_rent

	end
	

end