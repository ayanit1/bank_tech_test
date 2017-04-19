class Transaction

  attr_reader :amount, :date

  def initialize(amount, date = DateTime.now)
    @amount = amount
    @date = date
  end
end
