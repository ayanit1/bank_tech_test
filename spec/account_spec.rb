require 'account'

describe Account do
  context 'when initialised' do
    it 'balance is zero' do
      account = Account.new
      expect(account.balance).to eql 0
    end
  end
end
