Feature: Pay by card
  As a buyer
  I want to be able to pay by card
  So that I can make purchases using my credit or debit card

  Scenario: Pay by card successfully
    Given the buyer is on the checkout page
    When the buyer enters their card information and confirms the payment
    Then the buyer should be processed and the user should be redirected to a confirmation page

  Scenario: Error when paying by card with invalid card information
    Given the buyer is on the checkout page and has entered invalid card information
    When the buyer tries to confirm the payment
    Then they should receive an error message indicating that the card information is invalid

  Scenario: Error when paying by card with insufficient funds
    Given the buyer is on the checkout page and has insufficient funds in their card
    When the buyer tries to confirm the payment
    Then they should receive an error message indicating that they have insufficient funds to complete the transaction
