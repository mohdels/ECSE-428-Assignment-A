Feature: View pending transactions
  As a buyer
  I want to be able to view my pending transactions
  So that I can keep track of my purchases that has not yet been processed

  Scenario: View pending transactions successfully
    Given the buyer is on the transactions page
    When the buyer views their pending transactions
    Then they should see a list of their pending transactions, including the date, description, and amount of each transaction

  Scenario: Pending transactions are updated in real-time
    Given the buyer is on the transactions page and there is a pending transaction
    When the transaction status changes from pending to processed
    Then the transaction should be removed from the list of pending transactions and added to the list of previous transactions
