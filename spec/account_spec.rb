require 'account'

describe Account do
  let(:account) { Account.new }
  let(:deposit) { double :transaction, :amount => 5  }

  context 'when instantiated' do
    it 'balance is zero' do
      expect(account.balance).to eql 0
    end
  end

  context 'client makes a deposit' do
    it 'updates the balance' do
      expect { account.add_transaction(deposit) }.to change { account.balance }.to(5)
    end
  end

  
end
