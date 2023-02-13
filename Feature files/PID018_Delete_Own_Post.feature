Feature: Delete Own Post

  As a seller,
  I want to be able to delete used textbook posts that I have posted,
  so that I can remove any incorrect or outdated information.

  Scenario: Delete used textbook post successfully
    Given the user is logged in to their account
    And the user has posted a used textbook post
    When the user navigates to the used textbook post
    And the user clicks the "Delete" button
    Then the user should receive a confirmation that the used textbook post has been deleted
    And the used textbook post should no longer be visible on the platform.

  Scenario: Attempt to delete used textbook post not posted by the user
    Given the user is logged in to their account
    And the user has not posted the used textbook post in question
    When the user attempts to delete the used textbook post
    Then the user should receive an error message indicating that they are not authorized to delete the used textbook post
    And the used textbook post should remain visible on the platform.
