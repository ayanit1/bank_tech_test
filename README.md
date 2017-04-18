# Bank Tech Test [![Coverage Status](://coveralls.io/repos/github/ayanit1/bank_tech_test/badge.svg?branch=master)](://coveralls.io/github/ayanit1/bank_tech_test?branch=master) [![Build Status](https://travis-ci.org/ayanit1/bank_tech_test.svg?branch=master)](https://travis-ci.org/ayanit1/bank_tech_test)

This project is a practice technical test to build a simple banking program, as per the specification below.

## Specification

### Requirements

* You should be able to interact with the your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012
**And** a withdrawal of 500 on 14-01-2012
**When** they print their bank statement
**Then** they would see

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
