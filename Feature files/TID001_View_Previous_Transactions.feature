Feature: View previous transactions
  As a buyer/seller
  I want to be able to view my previous transactions
  So that I can keep track of my previous purchases/sales

  Scenario: View previous transactions successfully
    Given the user is on the transactions page
    When the user views their previous transactions
    Then they should see a list of their previous transactions, including the date, description, and amount of each transaction

  Scenario: View previous transactions with filter options
    Given the user is on the transactions page
    When the user applies filters to view specific transactions, such as a date range
    Then they should see only the transactions that match the specified filters

  Scenario: Clear filters
    Given the user is on the transactions page
    And the user applied one or more filters
    When the user clicks the clear filters button
    Then the filters should be cleared from the filter bar
    
