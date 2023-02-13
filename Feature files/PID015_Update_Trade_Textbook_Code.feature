Feature: Update Textbook Code

  As a seller
  I want to be able to update the code (e.g., ISBN) of a textbook I want to trade mine for
  so that it accurately reflects the book's information.

  Scenario: Update a trade textbook code
    Given the user is logged in to their account
    And the user has created a post for a used textbook
    When the user navigates to the textbook listing page
    And the user clicks the "Edit" button for the textbook post
    And the user updates the code of the trade textbook
    And the user clicks the "Save Changes" button
    Then the user should be redirected back to the textbook listing page
    And the updated code should be displayed for the textbook post
    And the user should receive a confirmation that the changes have been saved successfully.

  Scenario: Try to update trade textbook code with an empty field
    Given the user is logged in to their account
    And editing a post they created
    When the user tries to update the trade textbook's code with an empty field
    And clicks the "Save Changes" button
    Then an error message should be displayed indicating that the field cannot be empty
    And the post should remain unchanged.