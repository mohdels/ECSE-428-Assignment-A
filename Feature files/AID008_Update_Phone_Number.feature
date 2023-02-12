Feature: Update profile phone number
  As a user
  I want to be able to update my phone number in my profile
  so that I have the correct information on file.

  Scenario: Successful phone number update
    Given the user is logged in to their account
    And the user navigates to the profile page
    When the user updates their phone number
    And clicks the update button
    Then a confirmation code should be sent to the new phone number
    And the user should enter the confirmation code to verify the new phone number
    And the user's phone number should be updated in their account
    And a success message should be displayed indicating the phone number update was successful

  Scenario: Invalid phone number format
    Given the user is logged in to their account
    And the user navigates to the profile page
    When the user enters an invalid phone number format in the phone number field
    And clicks the update button
    Then an error message should be displayed indicating the phone number is in an invalid format
    And the user's phone number should not be updated in their account

  Scenario: Same phone number as current phone number
    Given the user is logged in to their account
    And the user navigates to the profile page
    When the user enters the same phone number as their current phone number in the phone number field
    And clicks the update button
    Then an error message should be displayed indicating the new phone number is the same as the current phone number
    And the user's phone number should not be updated in their account

  Scenario: Invalid confirmation code
    Given the user is logged in to their account
    And the user navigates to the profile page
    When the user updates their phone number
    And clicks the update button
    And a confirmation code is sent to the new phone number
    And the user enters a wrong confirmation code
    Then an error message should be displayed indicating the confirmation code is invalid
    And the user's phone number should not be updated in their account