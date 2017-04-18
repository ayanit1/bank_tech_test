require 'transaction'

describe Transaction do
  let(:deposit) { Transaction.new(5.00) }

  context 'when instantiated' do
    it 'accepts a deposit amount' do
      expect(deposit.amount).to eql(5.00)
    end
  end
end
