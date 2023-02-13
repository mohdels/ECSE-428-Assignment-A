Feature: Update Textbook Price

  As a seller
  I want to be able to update the price of a used textbook post
  so that it accurately reflects the book's current value.

  Scenario: Update a textbook price successfully
    Given the user is logged in to their account
    And the user has created a post for a used textbook
    When the user navigates to the textbook listing page
    And the user clicks the "Edit" button for the textbook post
    And the user updates the price of the textbook
    And the user clicks the "Save Changes" button
    Then the user should be redirected back to the textbook listing page
    And the updated price should be displayed for the textbook post
    And the user should receive a confirmation that the changes have been saved successfully.

  Scenario: Update a textbook price with an invalid format
    Given the user is logged in to their account
    And the user has created a post for a used textbook
    When the user navigates to the textbook listing page
    And the user clicks the "Edit" button for the textbook post
    And the user enters an invalid format for the price (e.g. letters or symbols)
    And the user clicks the "Save Changes" button
    Then the user should see an error message indicating that the price format is invalid
    And the user should be able to return to the textbook listing page without saving any changes.

  Scenario: Update a textbook price with a value that is too low or high
    Given the user is logged in to their account
    And the user has created a post for a used textbook
    When the user navigates to the textbook listing page
    And the user clicks the "Edit" button for the textbook post
    And the user enters a price that is too low or high
    And the user clicks the "Save Changes" button
    Then the user should see an error message indicating that the price is not within the acceptable range
    And the user should be able to return to the textbook listing page without saving any changes.
