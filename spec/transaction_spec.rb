require 'transaction'

describe Transaction do
  subject(:transaction) { described_class.new }
  let(:deposit) { Transaction.new(5.00) }

  context 'when instantiated' do
    it 'accepts a deposit amount' do
      expect(deposit.amount).to equal(5.00)
    end
  end

  describe '#date' do
    it 'returns a date' do
      expect(transaction.date).to be_a(DateTime)
    end
  end
end
