Feature: Filter Posts by Trade or Buy Option

  As a user,
  I want to be able to filter used textbook posts by trade or buy option,
  so that I can easily find textbooks that I can either trade or buy.

  Scenario: Filter used textbook posts by trade option successfully
    Given the user is on the main used textbook exchange service page
    When the user selects the "Trade" option from the dropdown menu
    And the user clicks the "Filter" button
    Then the user should be taken to a filtered results page
    And the user should see a list of all used textbook posts that are available for trade
    And the user should be able to click on each used textbook post to view its details.

  Scenario: Filter used textbook posts by buy option successfully
    Given the user is on the main used textbook exchange service page
    When the user selects the "Buy" option from the dropdown menu
    And the user clicks the "Filter" button
    Then the user should be taken to a filtered results page
    And the user should see a list of all used textbook posts that are available for sale
    And the user should be able to click on each used textbook post to view its details.

  Scenario: Attempt to filter used textbook posts by trade or buy option with no results
    Given the user is on the main used textbook exchange service page
    When the user selects the "Trade" or "Buy" option from the dropdown menu
    And the user clicks the "Filter" button
    Then the user should be taken to a filtered results page
    And the user should receive a message indicating that no results were found for the selected trade or buy option.
