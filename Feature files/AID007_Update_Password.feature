Feature: Update password
  As a user
  I want to be able to update my password in my profile
  so that I can keep my account information secure.

  Scenario: Successful password update
    Given the user is logged in to their account
    And the user navigates to the profile page
    When the user enters the correct current password
    And a new password in the new password field
    And a matching password in the confirm password field
    And clicks the update button
    Then the user's password should be updated in their account
    And a success message should be displayed indicating the password update was successful

  Scenario: Incorrect current password
    Given the user is logged in to their account
    And the user navigates to the profile page
    When the user enters an incorrect current password in the current password field
    And a new password in the new password field
    And a matching password in the confirm password field
    And clicks the update button
    Then an error message should be displayed indicating the current password is incorrect
    And the user's password should not be updated in their account

  Scenario: New password does not match confirm password
    Given the user is logged in to their account
    And the user navigates to the profile page
    When the user enters the correct current password
    And a new password in the new password field
    And a different password in the confirm password field
    And clicks the update button
    Then an error message should be displayed indicating the new password and confirm password do not match
    And the user's password should not be updated in their account

  Scenario: Invalid password format
    Given the user is logged in to their account
    And the user navigates to the profile page
    When the user enters the correct current password
    And a new password that does not meet the password requirements in the new password field
    And a matching password in the confirm password field
    And clicks the update button
    Then an error message should be displayed indicating the password does not meet the requirements
    And the user's password should not be updated in their account

  Scenario: Same new password as current password
    Given the user is logged in to their account
    And the user navigates to the profile page
    When the user enters the correct current password
    And the same password in the new password field
    And a matching password in the confirm password field
    And clicks the update button
    Then an error message should be displayed indicating the new password is the same as the current password
    And the user's password should not be updated in their account