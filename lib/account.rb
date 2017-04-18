class Account
  INITIAL_BALANCE = 0

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def add_transaction(transaction)
    @balance += transaction.amount
  end
end
