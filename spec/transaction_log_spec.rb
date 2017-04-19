require 'transaction_log'

describe Transaction_log do
  let(:transaction_log) { Transaction_log.new }

  context 'when instantiated' do
    it 'has holds an empty array as placeholder' do
      expect(transaction_log.transactions).to eql([])
    end
  end

  describe '#log' do
    context 'client has made a transaction' do
      it 'logs transaction' do
        expect { transaction_log.log(transaction) }.to change{ transaction_log.transactions.size }.by(1)
      end
    end
  end
end
