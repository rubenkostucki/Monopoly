class Player

	attr_reader :balance, :lands, :name

	def initialize(ame, balance)

		@name = name
		@balance = balance
		@lands = []

	end

	def buy_land(land)
		@lands << land
		# decrease_balance(land.view_value_for_purchase)
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

end