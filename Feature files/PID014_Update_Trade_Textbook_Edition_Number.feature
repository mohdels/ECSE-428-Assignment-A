Feature: Update Trade Textbook Edition Number

  As a seller
  I want to be able to update the edition number of a textbook I want to trade mine for
  so that it accurately reflects the book's information.

  Scenario: Update a textbook edition number (successful scenario)
    Given the user is logged in to their account
    And the user has created a post for a used textbook
    When the user navigates to the textbook listing page
    And the user clicks the "Edit" button for the textbook post
    And the user updates the edition number of the trade textbook
    And the user clicks the "Save Changes" button
    Then the user should be redirected back to the textbook listing page
    And the updated edition number should be displayed for the textbook post
    And the user should receive a confirmation that the changes have been saved successfully.

  Scenario: Try to update edition number with an empty field
    Given the user is logged in to their account
    And editing a post they created
    When the user tries to update the trade textbook's edition number with an empty field
    And clicks the "Save Changes" button
    Then an error message should be displayed indicating that the field cannot be empty
    And the post should remain unchanged.

  Scenario: Try to update an edition number with an invalid format
    Given the user is logged in to their account
    And editing a post they created
    When the user inputs an edition number which is not a positive integer
    And clicks on the "Save Changes" button
    Then an error message should appear, indicating that the edition number should be a positive integer