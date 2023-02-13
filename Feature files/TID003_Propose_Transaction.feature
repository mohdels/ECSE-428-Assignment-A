Feature: Propose transactions
  As a buyer
  I want to be able to propose transactions
  So that I can propose an offer to buy a book

  Scenario: Propose transaction successfully
    Given the buyer is on the browsing page
    When the buyer proposes a transaction on one of the postings
    Then the transaction should be added to the list of requested transactions and marked as a proposed transaction

  Scenario: Error when proposing transaction with insufficient funds
    Given the buyer is on the browsing page and has insufficient funds in their account
    When the buyer proposes a transaction
    Then they should receive an error message indicating that they have insufficient funds to complete the transaction

  Scenario: Error when proposing transaction with invalid account information
    Given the buyer is on the transactions page and has entered invalid payment information
    When the buyer proposes a transaction
    Then they should receive an error message indicating that the account information is invalid
