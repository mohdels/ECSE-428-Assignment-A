Feature: Toggle Trade Option

  As a seller,
  I want to be able to toggle the trade option on my used textbook post,
  so that I can indicate whether I am open to trades or not.

  Scenario: Toggle trade option successfully
    Given the user is logged in to their account
    And the user has created a post for a used textbook
    When the user navigates to the textbook listing page
    And the user clicks the "Edit" button for the textbook post
    And the user selects the option to trade the textbook
    And the user clicks the "Save Changes" button
    Then the user should be redirected back to the textbook listing page
    And the trade option should be displayed as enabled for the textbook post
    And the user should receive a confirmation that the changes have been saved successfully.

  Scenario: Toggle trade option to off
    Given the user is logged in to their account
    And the user has created a post for a used textbook with the trade option enabled
    When the user navigates to the textbook listing page
    And the user clicks the "Edit" button for the textbook post
    And the user deselects the option to trade the textbook
    And the user clicks the "Save Changes" button
    Then the user should be redirected back to the textbook listing page
    And the trade option should be displayed as disabled for the textbook post
    And the user should receive a confirmation that the changes have been saved successfully.
