class Printer

  def print_bank_statement(account)
    header_table + table_rows(account)
  end

  private

  def header_table
    "date || credit || debit || balance\n"
  end

  def table_rows(account)
    starting_balance = Account::INITIAL_BALANCE
    account.transaction_log.transactions.map do |transaction|
      date = transaction.date.strftime("%d/%m/%Y")
      credit = transaction.amount > 0 ? "#{sprintf "%.2f", transaction.amount} " : ""
      debit = transaction.amount < 0 ? "#{sprintf "%.2f", transaction.amount.abs} " : ""
      balance = "#{sprintf "%.2f", starting_balance += transaction.amount}"
      "#{date} || #{credit}|| #{debit}|| #{balance}\n"
    end.reverse.join(",").delete(",")
  end
end
