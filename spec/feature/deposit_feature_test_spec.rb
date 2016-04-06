# As a user, 
# So that I can keep my money in a safe place
# I would like to be able to deposit money to my account
describe "Depositing Money" do 
		it 'allows a user to deposit money into an account' do 
			balance = 0
			account = BankAccount.new(balance)
			account.credit(100)
			expect(account.balance).to eq(100)
		end
	end