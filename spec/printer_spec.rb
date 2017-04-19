require 'printer'

describe Printer do
  let(:transaction1) { double :transaction, :amount => 1000.00, :date => DateTime.new(2012,1,10) }
  let(:transaction2) { double :transaction, :amount => 2000.00, :date => DateTime.new(2012,1,13) }
  let(:transaction3) { double :transaction, :amount => -500.00, :date => DateTime.new(2012,1,14) }
  let(:transaction_log) { double :transaction_log, :transactions => [transaction1, transaction2, transaction3] }
  let(:account) { double :account, :transaction_log => transaction_log }
  subject(:printer) { described_class.new }
  let(:output) {
    'date || credit || debit || balance
     14/01/2012 || || 500.00 || 2500.00
     13/01/2012 || 2000.00 || || 3000.00
     10/01/2012 || 1000.00 || || 1000.00'
  }

  describe '#print_bank_statement' do
    context 'user has some cash flow' do
      it 'prints out statement' do
        expect(printer.print_bank_statement(account)).to eq(output)
      end
    end
  end
end
