Feature: Update Textbook Photo

  As a seller,
  I want to be able to update the photo of a used textbook post
  so that it accurately represents the book.

  Scenario: Update a textbook photo successfully
    Given the user is logged in to their account
    And the user has created a post for a used textbook
    When the user navigates to the textbook listing page
    And the user clicks the "Edit" button for the textbook post
    And the user selects a new photo to upload
    And the user clicks the "Save Changes" button
    Then the user should be redirected back to the textbook listing page
    And the updated photo should be displayed for the textbook post
    And the user should receive a confirmation that the changes have been saved successfully.

  Scenario: Update a textbook photo with an invalid file type
    Given the user is logged in to their account
    And the user has created a post for a used textbook
    When the user navigates to the textbook listing page
    And the user clicks the "Edit" button for the textbook post
    And the user selects a file that is not a valid image format
    And the user clicks the "Save Changes" button
    Then the user should see an error message indicating that the file type is not valid
    And the user should be able to return to the textbook listing page without saving any changes.

  Scenario: Update a textbook photo with a file that is too large
    Given the user is logged in to their account
    And the user has created a post for a used textbook
    When the user navigates to the textbook listing page
    And the user clicks the "Edit" button for the textbook post
    And the user selects a photo that is too large
    And the user clicks the "Save Changes" button
    Then the user should see an error message indicating that the file size is too large
    And the user should be able to return to the textbook listing page without saving any changes.
