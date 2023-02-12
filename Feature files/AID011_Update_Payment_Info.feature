Feature: Update payment information
  As a buyer
  I want to be able to update my payment information
  so that I can easily manage my purchases and subscriptions.

  Scenario: Successful payment information update
    Given the buyer is logged in to their account
    And the buyer navigates to the payment information page
    When the buyer enters their updated payment information
    And clicks the update button
    And a confirmation prompt is displayed asking the user to confirm the payment information update
    And the buyer clicks the confirm button
    Then the buyer's payment information should be updated in their account
    And a success message should be displayed indicating the payment information update was successful

  Scenario: Invalid payment information
    Given the buyer is logged in to their account
    And the buyer navigates to the payment information page
    When the buyer enters invalid payment information
    And clicks the update button
    Then an error message should be displayed indicating the payment information is invalid
    And the buyer's payment information should not be updated in their account

  Scenario: Empty payment information fields
    Given the buyer is logged in to their account
    And the buyer navigates to the payment information page
    When the buyer leaves one or more payment information fields empty
    And clicks the update button
    Then an error message should be displayed indicating the required fields must be filled in
    And the buyer's payment information should not be updated in their account

  Scenario: Buyer does not click on the confirm button in the confirmation prompt
    Given the buyer is logged in to their account
    And the buyer navigates to the payment information page
    When the buyer enters their updated payment information
    And clicks the update button
    And a confirmation prompt is displayed asking the user to confirm the payment information update
    And the buyer leaves the page and does not click on the confirm button
    Then the buyer's payment information should not be updated in their account

