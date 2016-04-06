describe BankAccount do 
	let(:balance) {"balance"}
	subject(:account) { described_class.new() }
	
	it { is_expected.to respond_to(:credit).with(2).arguments }
	it { is_expected.to respond_to(:debit).with(2).arguments }
	it { is_expected.to respond_to(:balance) }
	it { is_expected.to respond_to(:print) }

	describe "#balance" do 
		it "has a default balance of 0" do 
			account = BankAccount.new()
			expect(account.balance).to eq 0 
		end
	end

	describe "#credit" do 
		it "increases the account balance by the parameter given" do
			account.credit(100)
			expect(account.balance).to eq(100)
		end 
	end

	describe "#debit" do 
		it "decreases the account balance by the parameter given" do
			account.credit(100)
			account.debit(100)
			expect(account.balance).to eq(0)
		end 
	end

	describe '#statement' do 
		it "shows the history of a transaction" do 
			allow(Time).to receive(:new) { '14/01/2012' } 
			account.credit(100)
			expect(account.statement).to eq([['14/01/2012', 100, 100]])
		end
	end


	# describe '#print_statement' do 
	# 	it "prints the history of a transaction" do 
	# 		account = BankAccount.new(2000)
	# 		date = '14/01/2012'
	# 		account.credit(500, date)
	# 		expect(account.print).to eq("date || credit || debit || balance\n14/01/2012 || 500.00 || || 2500.00\n")
		
	# 	end
	# end

end