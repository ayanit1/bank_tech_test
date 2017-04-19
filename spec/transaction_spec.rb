require 'transaction'

describe Transaction do
  let(:deposit) { 5.00 }
  subject(:transaction) { described_class.new(deposit) }


  context 'when instantiated' do
    it 'accepts a deposit amount' do
      expect(transaction.amount).to equal(5.00)
    end
  end

  describe '#date' do
    it 'returns a date' do
      expect(transaction.date).to be_a(DateTime)
    end
  end
end
