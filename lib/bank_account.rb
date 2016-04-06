class BankAccount

attr_reader :balance, :statement, :print, :history

	def initialize(balance=0)
		@balance = balance
		@statement = []
		@history =[]
		@print = "date || credit || debit || balance\n"
	end
	
	def credit(amount, date=Time.new)
		@balance += amount
		@statement+=[[date, amount, @balance]]
	end

	def debit(amount, date=Time.new)
		@balance -= amount
		@statement+=[[date, amount, @balance]]
	end

end