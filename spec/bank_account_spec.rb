describe BankAccount do 
	let(:balance) {"balance"}
	subject(:account) { described_class.new() }

  it { is_expected.to respond_to(:credit).with(1).arguments }
  it { is_expected.to respond_to(:balance) }

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

end