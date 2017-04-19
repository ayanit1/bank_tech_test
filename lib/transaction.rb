class Transaction

  attr_reader :amount, :date

  def initialize(amount)
    @amount = amount
    @date = DateTime.now
  end
end
