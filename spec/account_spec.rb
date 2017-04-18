require 'account'

describe Account do
  context 'when initialised' do
    it 'balance of zero' do
      account = Account.new
      expect(account.balance).to eq 0
    end
  end
end
