Feature: Update profile email
  As a user
  I want to be able to update my email address in my profile
  so that I can keep my account information up to date.

  Scenario: Successful email update
    Given the user is logged in to their account
    And the user navigates to the profile page
    When the user updates their email address
    And clicks the update button
    Then the user's email address should be updated in their profile
    And a success message should be displayed indicating the email update was successful

  Scenario: Invalid email format
    Given the user is logged in to their account
    And the user navigates to the profile page
    When the user enters an invalid email format in the email field
    And clicks the update button
    Then an error message should be displayed indicating the email format is invalid
    And the user's email address should not be updated in their profile

  Scenario: Email already in use
    Given the user is logged in to their account
    And the user navigates to the profile page
    When the user enters an email address that is already in use by another user
    And clicks the update button
    Then an error message should be displayed indicating the email address is already in use
    And the user's email address should not be updated in their profile
