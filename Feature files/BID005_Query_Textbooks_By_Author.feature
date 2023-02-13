Feature: Query Used Textbook Posts by Author

  As a user,
  I want to be able to search for used textbook posts by author,
  so that I can easily find all the textbooks written by a specific author.

  Scenario: Query used textbook posts by author successfully
    Given the user is on the main used textbook exchange service page
    When the user enters the name of the author they are searching for in the author search bar
    And the user clicks the "Search" button
    Then the user should be taken to a search results page
    And the user should see a list of all used textbook posts that match the entered author name
    And the user should be able to click on each used textbook post to view its details.

  Scenario: Attempt to query used textbook posts by author with no results
    Given the user is on the main used textbook exchange service page
    When the user enters the name of an author that does not have any textbooks in the system
    And the user clicks the "Search" button
    Then the user should be taken to a search results page
    And the user should receive a message indicating that no results were found for the entered author name.
