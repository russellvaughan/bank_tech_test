	# As a user,
	# So that I can have access to my money
	# I would like to be able to withdraw my money.

	describe "Withdrawing money" do 
		it 'allows a user to withdraw money from an account' do 
			account = BankAccount.new(100)
			account.debit(100)
			expect(account.balance).to eq(0)
		end
	end