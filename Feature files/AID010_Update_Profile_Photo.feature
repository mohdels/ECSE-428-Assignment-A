Feature: Update profile photo
  As a user
  I want to be able to update my profile photo
  so that other buyers/sellers can see a current and accurate representation of me.

  Scenario: Successful photo update
    Given the user is logged in to their account
    And the user navigates to the profile page
    When the user selects a new photo from their device
    And clicks the update button
    Then the user's photo should be updated in their account
    And a success message should be displayed indicating the photo update was successful

  Scenario: Invalid file type
    Given the user is logged in to their account
    And the user navigates to the profile page
    When the user selects a file that is not an image from their device
    And clicks the update button
    Then an error message should be displayed indicating the file type is invalid
    And the user's photo should not be updated in their account

  Scenario: Photo too large
    Given the user is logged in to their account
    And the user navigates to the profile page
    When the user selects a photo that is larger than the allowed file size from their device
    And clicks the update button
    Then an error message should be displayed indicating the photo is too large
    And the user's photo should not be updated in their account

  Scenario: No photo selected
    Given the user is logged in to their account
    And the user navigates to the profile page
    When the user clicks the update button without selecting a new photo
    Then an error message should be displayed indicating a photo is required
    And the user's photo should not be updated in their account
