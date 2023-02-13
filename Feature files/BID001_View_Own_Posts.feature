Feature: View Own Posts

  As a seller,
  I want to be able to view used textbook posts that I have posted,
  so that I can easily track my listings and make any necessary updates.

  Scenario: View used textbook posts successfully
    Given the user is logged in to their account
    And the user has posted one or more used textbook posts
    When the user navigates to their account page
    And the user clicks on the "My Listings" button
    Then the user should be able to see a list of all the used textbook posts they have posted
    And the user should be able to click on each used textbook post to view its details.

  Scenario: Attempt to view used textbook posts for a user with no posted listings
    Given the user is logged in to their account
    And the user has not posted any used textbook posts
    When the user navigates to their account page
    And the user clicks on the "My Listings" button
    Then the user should receive a message indicating that they have not posted any used textbook posts
    And the user should not be able to view any used textbook posts.
