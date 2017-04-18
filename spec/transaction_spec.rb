require 'transaction'

describe Transaction do
  context 'when initiated' do
    it 'accepts a transaction amount' do
      withdraw = Transaction.new(5)
      expect(withdraw.amount).to eql(5)
    end
  end
end
