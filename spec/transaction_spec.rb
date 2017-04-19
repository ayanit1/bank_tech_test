require 'transaction'

describe Transaction do
  subject(:transaction) { described_class.new(deposit) }
  let(:deposit) { 5.00 }

  context 'when instantiated' do
    it 'accepts a deposit amount' do
      expect(transaction.amount).to equal(5.00)
    end
  end

  describe '#date' do
    it 'returns a date' do
      expect(transaction.date).to be_a(DateTime)
    end

    it 'returns the date the transaction was created' do
      test_date = DateTime.now.strftime("%d/%m/%Y")
      expect(transaction.date.strftime("%d/%m/%Y")).to eq test_date
    end
  end
end
