# Bank Tech Test [![Coverage Status](://coveralls.io/repos/github/ayanit1/bank_tech_test/badge.svg?branch=master)](://coveralls.io/github/ayanit1/bank_tech_test?branch=master) [![Build Status](https://travis-ci.org/ayanit1/bank_tech_test.svg?branch=master)](https://travis-ci.org/ayanit1/bank_tech_test)

This project is a practice technical test to build a simple banking program, as per the specification below.

## Specification

### Requirements

* You should be able to interact with the your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012 and a deposit of 2000 on 13-01-2012 and a withdrawal of 500 on 14-01-2012 when they prints their bank statement then they would see

```
date       || credit || debit   || balance
14/01/2012 ||        || 500.00  || 2500.00
13/01/2012 || 2000.00||         || 3000.00
10/01/2012 || 1000.00||         || 1000.00
```
### Approach

After reading the specification, I decided to use Ruby as I felt it would serve me the most in this situation, in terms of simplicity.

My first step to define the following user stories:

```
As a client,
so that I can use the services provided by the bank,
I want to be able to have a bank account

As a client,
so that I am able to save money,
I want to be able to deposit into my Account

As a client,
so that I am able to use the money I've saved,
I want to be able to withdraw money

As a client,
so that I can monitor my cash flow,
I want to be able view and account statement
```

### Usage

To install the program:

- Clone this repo
- Run cd bank_tech_test
- run bundle install

To run tests:

- run rspec

To use program, run irb:

```
2.3.3 :001 > require './lib/account'
 => true
2.3.3 :002 > require './lib/transaction'
 => true
2.3.3 :003 > require './lib/transaction_log'
 => true
2.3.3 :004 > require './lib/printer'
 => true
2.3.3 :005 > require 'date'
 => true
2.3.3 :006 > account = Account.new
 => #<Account:0x007fd1b982afb8 @balance=0, @transaction_log=#<Transaction_log:0x007fd1b982af90 @transactions=[]>>
2.3.3 :007 > printer = Printer.new
 => #<Printer:0x007fd1b9b76af0>
2.3.3 :008 > transaction_1 = Transaction.new(1000.00)
 => #<Transaction:0x007fd1b9b6d9f0 @amount=1000.0, @date=#<DateTime: 2017-04-19T22:23:51+01:00 ((2457863j,77031s,602563000n),+3600s,2299161j)>>
2.3.3 :009 > account.add_transaction(transaction_1)
 => [#<Transaction:0x007fd1b9b6d9f0 @amount=1000.0, @date=#<DateTime: 2017-04-19T22:23:51+01:00 ((2457863j,77031s,602563000n),+3600s,2299161j)>>]
2.3.3 :010 > transaction_2 = Transaction.new(2000.00)
 => #<Transaction:0x007fd1b9b5c8d0 @amount=2000.0, @date=#<DateTime: 2017-04-19T22:23:51+01:00 ((2457863j,77031s,605404000n),+3600s,2299161j)>>
2.3.3 :011 > account.add_transaction(transaction_2)
 => [#<Transaction:0x007fd1b9b6d9f0 @amount=1000.0, @date=#<DateTime: 2017-04-19T22:23:51+01:00 ((2457863j,77031s,602563000n),+3600s,2299161j)>>, #<Transaction:0x007fd1b9b5c8d0 @amount=2000.0, @date=#<DateTime: 2017-04-19T22:23:51+01:00 ((2457863j,77031s,605404000n),+3600s,2299161j)>>]
2.3.3 :012 > transaction_3 = Transaction.new(-500.00)
 => #<Transaction:0x007fd1b90de318 @amount=-500.0, @date=#<DateTime: 2017-04-19T22:23:51+01:00 ((2457863j,77031s,607704000n),+3600s,2299161j)>>
2.3.3 :013 > account.add_transaction(transaction_3)
 => [#<Transaction:0x007fd1b9b6d9f0 @amount=1000.0, @date=#<DateTime: 2017-04-19T22:23:51+01:00 ((2457863j,77031s,602563000n),+3600s,2299161j)>>, #<Transaction:0x007fd1b9b5c8d0 @amount=2000.0, @date=#<DateTime: 2017-04-19T22:23:51+01:00 ((2457863j,77031s,605404000n),+3600s,2299161j)>>, #<Transaction:0x007fd1b90de318 @amount=-500.0, @date=#<DateTime: 2017-04-19T22:23:51+01:00 ((2457863j,77031s,607704000n),+3600s,2299161j)>>]
2.3.3 :014 > printer.print_bank_statement(account)
 => "date || credit || debit || balance\n19/04/2017 || || 500.00 || 2500.00\n19/04/2017 || 2000.00 || || 3000.00\n19/04/2017 || 1000.00 || || 1000.00\n"
 ```
