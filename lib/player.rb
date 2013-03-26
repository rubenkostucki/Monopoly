class Player

	def initialize(player_name, balance)

		@name = name
		@balance = balance
		@lands = []

	end

	def check_balance
		@balance
	end

	def buy_land(land)
		@lands << land
		decrease_balance(land.view_value_for_purchase)
	end

	def decrease_balance(value_for_purchase)
		@balance = @balance - value_for_purchase
	end

	def pay_rent(rent_price)
		@balance = @balance - rent_price
	end

	def receive_rent(rent_price)
		@balance = @balance + rent_price
	end

	def view_lands
		@lands
	end

	def to_s
		"#{@lands}"
	end

end