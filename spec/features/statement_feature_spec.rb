describe '#statement' do 
	context 'when an account is credited' do 
		it "shows the history of a transaction" do 
			account = BankAccount.new
			allow(Time).to receive(:new) { '14/01/2012' } 	
			account.credit(100)
			expect(account.statement).to eq([['14/01/2012', 100, 100]])
		end
	end

	context 'when an account is debited' do 
		it "shows the history of a transaction" do 
			account = BankAccount.new(200)
			allow(Time).to receive(:new) { '14/01/2012' } 
			account.debit(100)
			expect(account.statement).to eq([['14/01/2012', 100, 100]])
		end
	end

	context 'when their are multiple transactions' do
		it "keeps a record of all statements" do
			account = BankAccount.new(400)
			allow(Time).to receive(:new) { '14/01/2012' } 
			account.debit(100)
			account.debit(200)
			expect(account.statement).to eq([['14/01/2012', 100, 300], ['14/01/2012', 200, 100]])
		end 
	end

end