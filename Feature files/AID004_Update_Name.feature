Feature: Update Profile Name
  As a user
  I want to update my profile name
  so that it accurately reflects who I am.

  Scenario: Successfully update profile name
    Given the user is logged in to their account
    And the user navigates to the profile settings page
    When the user updates their first name and last name
    And clicks the "Save Changes" button
    Then the user's profile name should be updated and saved successfully
    And a confirmation message should be displayed indicating that the changes have been saved

  Scenario: Try to update profile name with invalid characters
    Given the user is logged in to their account
    And the user navigates to the profile settings page
    When the user tries to update their first name or last name with invalid characters, such as numbers or special symbols
    And clicks the "Save Changes" button
    Then an error message should be displayed indicating that the name should only contain letters
    And the profile settings page should remain unchanged

  Scenario: Try to update profile name with an empty field
    Given the user is logged in to their account
    And the user navigates to the profile settings page
    When the user tries to update their first name or last name with an empty field
    And clicks the "Save Changes" button
    Then an error message should be displayed indicating that the field cannot be empty
    And the profile settings page should remain unchanged.
