	describe "Withdrawing money" do 
		it 'allows a user to withdraw money from an account' do 
			account = BankAccount.new(100)
			account.debit(100)
			expect(account.balance).to eq(0)
		end
	end