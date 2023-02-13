Feature: Pay by trade
  As a buyer
  I want to be able to pay by trade
  So that I can make purchases using assets I own

  Scenario: Pay by trade successfully
    Given the buyer is on the checkout page and has the required textbook to trade
    When the buyer selects the trade option and clicks confirm
    Then the transaction should be processed and the user should be redirected to a confirmation page

  Scenario: Error when paying by trade without the required textbook
    Given the buyer is on the checkout page and does not have exact required textbook
    When the buyer tries to confirm the payment using the trade option
    Then they should receive an error message indicating that they do not have the right textbook

