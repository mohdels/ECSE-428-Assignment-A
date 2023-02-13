Feature: Update Textbook Condition Status

  As a seller
  I want to be able to update the condition status of a used textbook post
  so that it accurately reflects the book's current state.

  Scenario: Update a textbook condition status
    Given the user is logged in to their account
    And the user has created a post for a used textbook
    When the user navigates to the textbook listing page
    And the user clicks the "Edit" button for the textbook post
    And the user updates the condition status of the textbook to one of the pre-determined options
    And the user clicks the "Save Changes" button
    Then the user should be redirected back to the textbook listing page
    And the updated condition status should be displayed for the textbook post
    And the user should receive a confirmation that the changes have been saved successfully.
