Feature: Update profile bio
  As a buyer/seller
  I want to be able to update my profile bio
  so that others can see the most up-to-date information about me.

  Scenario: Successful bio update
    Given the user is logged in to their account
    And the user navigates to the profile page
    When the user updates their bio in the bio field
    And clicks the update button
    Then the user's bio should be updated in their account
    And a success message should be displayed indicating the bio update was successful

  Scenario: Bio too long
    Given the user is logged in to their account
    And the user navigates to the profile page
    When the user enters a bio that is longer than the allowed limit in the bio field
    And clicks the update button
    Then an error message should be displayed indicating the bio is too long
    And the user's bio should not be updated in their account

  Scenario: No changes made to bio
    Given the user is logged in to their account
    And the user navigates to the profile page
    When the user clicks the update button without making any changes to their bio
    Then an error message should be displayed indicating no changes were made to the bio
    And the user's bio should not be updated in their account
