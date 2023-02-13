Feature: View Buyer Posts

  As a buyer,
  I want to be able to view used textbook posts for which I am the buyer,
  so that I can easily track my purchases and communicate with the sellers.

  Scenario: View used textbook posts as a buyer successfully
    Given the user is logged in to their account
    And the user has purchased one or more used textbooks
    When the user navigates to their account page
    And the user clicks on the "My Purchases" button
    Then the user should be able to see a list of all the used textbook posts they have purchased
    And the user should be able to click on each used textbook post to view its details.

  Scenario: Attempt to view used textbook posts as a buyer while not logged in
    Given the user is not logged in to their account
    When the user attempts to view their purchased used textbook posts
    Then the user should be prompted to log in to their account
    And the user should not be able to view their purchased used textbook posts until they log in.

  Scenario: Attempt to view used textbook posts as a buyer with no purchases
    Given the user is logged in to their account
    And the user has not purchased any used textbooks
    When the user navigates to their account page
    And the user clicks on the "My Purchases" button
    Then the user should receive a message indicating that they have not purchased any used textbooks
    And the user should not be able to view any used textbook posts.
