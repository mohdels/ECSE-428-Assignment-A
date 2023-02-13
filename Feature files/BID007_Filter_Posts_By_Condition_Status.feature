Feature: Filter Posts by Condition Status

  As a user
  I want to be able to filter used textbook posts by condition status,
  so that I can easily find textbooks in the condition I am looking for.

  Scenario: Filter used textbook posts by condition status successfully
    Given the user is on the main used textbook exchange service page
    When the user selects a specific condition status from the dropdown menu
    And the user clicks the "Filter" button
    Then the user should be taken to a filtered results page
    And the user should see a list of all used textbook posts that match the selected condition status
    And the user should be able to click on each used textbook post to view its details.

  Scenario: Attempt to filter used textbook posts by condition status with no results
    Given the user is on the main used textbook exchange service page
    When the user selects a specific condition status from the dropdown menu
    And the user clicks the "Filter" button
    Then the user should be taken to a filtered results page
    And the user should receive a message indicating that no results were found for the selected condition status.
