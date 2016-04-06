describe "Statement Printing" do 
	it "displays a printed statement" do 
		account = BankAccount.new
		account.credit(1000, '10-01-2012')
		account.credit(2000, '13-01-2012')
		account.debit(500, '14-01-2012')
		expect(account.print).to eq("date || credit || debit || balance\n14/01/2012 || || 500.00 || 2500.00\n13/01/2012 || 2000.00 || || 3000.00\n10/01/2012 || 1000.00 || || 1000.00")
	end
end