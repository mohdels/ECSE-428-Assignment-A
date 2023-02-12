Feature: Update username
  As a user
  I want to be able to update my username in my profile
  so that I can keep my account information up to date.

  Scenario: Successful username update
    Given the user is logged in to their account
    And the user navigates to the profile page
    When the user updates their username
    And clicks the update button
    Then the user's username should be updated in their profile
    And a success message should be displayed indicating the username update was successful

  Scenario: Invalid username format
    Given the user is logged in to their account
    And the user navigates to the profile page
    When the user enters an invalid username format in the username field
    And clicks the update button
    Then an error message should be displayed indicating the username format is invalid
    And the user's username should not be updated in their profile

  Scenario: Username already in use
    Given the user is logged in to their account
    And the user navigates to the profile page
    When the user enters a username that is already in use by another user
    And clicks the update button
    Then an error message should be displayed indicating the username is already in use
    And the user's username should not be updated in their profile
