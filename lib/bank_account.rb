class BankAccount

attr_reader :balance, :statement, :print

	def initialize(balance=0)
		@balance = balance
		@statement = []
		@print = "date || credit || debit || balance\n"
	end
	
	def credit(amount, date=Time.new)
		@balance += amount
		statement.push(date, amount, @balance)
		text = "#{date} || #{sprintf('%.2f', amount)} || || #{sprintf('%.2f', balance)}\n"
		@print.concat(text)
	end

	def debit(amount, date=Time.new)
		@balance -= amount
		statement.push(date, amount, @balance)
		text = "#{date} || || #{sprintf('%.2f', amount)} || #{sprintf('%.2f', balance)}\n"
		@print.concat(text)
	end

end