Feature: View All Posts

  As a user,
  I want to be able to view all used textbook posts,
  so that I can browse and search for used textbooks.

  Scenario: View all used textbook posts successfully
    Given the user is logged in to their account
    When the user navigates to the used textbook posts page
    Then the user should be able to see a list of all the used textbook posts on the platform
    And the user should be able to filter the used textbook posts by title, author, and other relevant criteria
    And the user should be able to click on each used textbook post to view its details.

  Scenario: Attempt to view all used textbook posts while not logged in
    Given the user is not logged in to their account
    When the user attempts to view all used textbook posts
    Then the user should be able to view a list of all the used textbook posts on the platform
    And the user should not be able to view the details of each used textbook post until they log in.

  Scenario: View all used textbook posts with no listings available
    Given the user is logged in to their account
    And there are no used textbook posts available on the platform
    When the user navigates to the used textbook posts page
    Then the user should receive a message indicating that there are no used textbook posts available
    And the user should not be able to view any used textbook posts.
