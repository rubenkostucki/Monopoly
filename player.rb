class Player

	def initialize(name, balance)

		@name = name
		@balance = balance
		@lands = []

	end

	def check_balance
		@balance
	end

	def buy_land(land)
		@lands << land
	end

	def pay_rent(rent_price)
		@balance - "#{rent_price}"
	end

	def receive_rent(rent_price)
		@balance + "#{rent_price}"
	end

	def view_lands
		@lands
	end

end