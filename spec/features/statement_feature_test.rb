describe '#statement' do 
	it "shows the history of a transaction" do 
		allow(Time).to receive(:new) { '14/01/2012' } 
		account.credit(100)
		expect(account.statement).to eq(['14/01/2012', 100, 100])
	end
end