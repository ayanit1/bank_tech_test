require 'transaction_log'

describe Transaction_log do
  let(:transaction_log) { Transaction_log.new }

  context 'when instantiated' do
    it 'has holds an empty array as placeholder' do
      expect(transaction_log.transactions).to equal([])
    end
  end
end
