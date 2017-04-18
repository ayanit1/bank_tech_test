require 'transaction'

describe Transaction do
  let(:deposit_amount) { 5 }
  context 'when initiated' do

    it 'accepts a transaction amount' do
      allow(subject).to receive(:deposit_amount)
      expect(transaction.amount).to eql(5)
    end

  end
end
