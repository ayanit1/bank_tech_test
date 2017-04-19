class Account
  INITIAL_BALANCE = 0
  MINIMUM_BALANCE = 0

  attr_reader :balance, :transaction_log

  def initialize(transaction_log = Transaction_log.new)
    @balance = 0
    @transaction_log = transaction_log
  end

  def add_transaction(transaction)
    error_message = "Transaction error: Not enough balance in account to make withdraw"
    raise error_message if @balance + transaction.amount < MINIMUM_BALANCE
    update_balance(transaction.amount)
  end

  private

  def update_balance(amount)
    @balance += amount
  end

end
