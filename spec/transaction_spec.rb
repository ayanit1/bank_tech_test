require 'transaction'

describe Transaction do
  let(:withdraw) { Transaction.new(5) }

  context 'when instantiated' do
    it 'accepts a transaction amount' do
      expect(withdraw.amount).to eql(5)
    end
  end
end
