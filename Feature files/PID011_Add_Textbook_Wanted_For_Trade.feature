Feature: Add Textbook Wanted for Trade

  As a seller,
  I want to be able to specify a textbook I want to trade my used textbook for
  so that potential trade partners can see what I am looking for.

  Scenario: Add a textbook wanted for trade successfully
    Given the user is logged in to their account
    And the user has created a post for a used textbook
    When the user navigates to the textbook listing page
    And the user clicks the "Edit" button for the textbook post
    And the user selects the option to trade the textbook
    And the user enters the information of the textbook they want in exchange
    And the user clicks the "Save Changes" button
    Then the user should be redirected back to the textbook listing page
    And the specified textbook wanted for trade should be displayed for the textbook post
    And the user should receive a confirmation that the changes have been saved successfully.

  Scenario: Add a textbook wanted for trade without selecting trade option
    Given the user is logged in to their account
    And the user has created a post for a used textbook
    When the user navigates to the textbook listing page
    And the user clicks the "Edit" button for the textbook post
    And the user enters the information of the textbook they want in exchange
    And the user clicks the "Save Changes" button
    Then the user should see an error message indicating that they must select the trade option before entering the information
    And the user should be able to return to the textbook listing page without saving any changes.
