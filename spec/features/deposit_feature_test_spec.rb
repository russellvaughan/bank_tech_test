describe "Features" do 

	describe "Depositing Money" do 
		it 'allows a user to deposit money into an account' do 
			account = BankAccount.new
			account.credit(100)
			expect(account.balance).to eq(100)
		end
	end

end