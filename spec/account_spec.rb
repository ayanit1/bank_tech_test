require 'account'

describe Account do
  let(:account) { Account.new }
  let(:deposit) { double :transaction, :amount => 5.00  }
  let(:withdraw) { double :transaction, :amount => -5.00 }

  context 'when instantiated' do
    it 'balance is zero' do
      expect(account.balance).to eql(0)
    end
  end

  context 'client makes a deposit' do
    it 'updates the balance' do
      expect { account.add_transaction(deposit) }.to change { account.balance }.to(5.00)
    end
  end

  context 'client makes a withdraw' do
    it 'updates the balance' do
      account.add_transaction(deposit)
      expect { account.add_transaction(withdraw) }.to change { account.balance }.to(0)
    end

    it 'raises error message if not enough balance is available' do
      expect { account.add_transaction(withdraw) }.to raise_error('Transaction error: Not enough balance in account to make withdraw')
    end
  end

end
