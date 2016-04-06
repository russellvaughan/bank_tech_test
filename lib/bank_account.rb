class BankAccount

attr_reader :balance, :statement

	def initialize(balance=0)
		@balance = balance
		@statement = [Time.new]
	end
	
	def credit(amount)
		@balance += amount
		statement.push(amount, @balance)
	end

	def debit(amount)
		@balance -= amount
	end



end