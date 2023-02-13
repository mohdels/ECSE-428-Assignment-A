Feature: Set up direct deposit
  As a seller
  I want to be able to set up direct deposit
  So that I can receive payments directly into my bank account

  Scenario: Set up direct deposit successfully
    Given the seller is on the direct deposit page
    When the seller provides their bank account information and verifies the information is correct
    Then the seller's account should be set up for direct deposit and payments should be sent directly to the provided bank account

  Scenario: Error when setting up direct deposit with invalid bank information
    Given the seller is on the direct deposit page and has entered invalid bank information
    When the seller tries to set up direct deposit
    Then they should receive an error message indicating that the bank information is invalid

  Scenario: Error when setting up direct deposit with insufficient information
    Given the seller is on the direct deposit page and has not provided all required information
    When the seller tries to set up direct deposit
    Then they should receive an error message indicating that they have not provided all of the required information

  Scenario: Direct deposit information is securely stored
    Given the seller has set up direct deposit
    When the seller logs out and logs back in
    Then the seller's direct deposit information should still be securely stored and accessible for future transactions
