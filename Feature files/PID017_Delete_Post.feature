Feature: Delete Post

  As an Admin,
  I want to be able to delete used textbook posts,
  so that I can remove any irrelevant or inappropriate content from the platform.

  Scenario: Delete used textbook post successfully
    Given the Admin is logged in to their account
    When the Admin navigates to the used textbook post management page
    And the Admin selects the used textbook post they wish to delete
    And the Admin clicks the "Delete" button
    Then the Admin should receive a confirmation that the used textbook post has been deleted
    And the used textbook post should no longer be visible on the platform.
