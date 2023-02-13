Feature: Query Used Textbook Posts by Title

  As a user,
  I want to be able to search for used textbook posts by title,
  so that I can easily find the specific textbook I am looking for.

  Scenario: Query used textbook posts by title successfully
    Given the user is on the main used textbook exchange service page
    When the user enters the title of the textbook they are searching for in the title search bar
    And the user clicks the "Search" button
    Then the user should be taken to a search results page
    And the user should see a list of all used textbook posts that match the entered title
    And the user should be able to click on each used textbook post to view its details.

  Scenario: Attempt to query used textbook posts by title with no results
    Given the user is on the main used textbook exchange service page
    When the user enters a title of a textbook that does not exist in the system
    And the user clicks the "Search" button
    Then the user should be taken to a search results page
    And the user should receive a message indicating that no results were found for the entered title.
