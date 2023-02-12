Feature: Delete User Accounts
  As an admin
  I want to be able to delete user accounts
  so that I can manage the user base effectively.

  Scenario: Delete a user account
    Given the administrator is logged in to the admin dashboard
    And the administrator navigates to the user management page
    And the administrator selects a user from the list of users
    And clicks the delete button
    And a confirmation prompt is displayed asking the admin to confirm the deletion
    When the admin clicks "confirm"
    Then the selected user's account should be deleted
    And a confirmation message should be displayed to confirm that the account has been deleted
    And the deleted user should no longer be listed in the user management page

  Scenario: Admin does not click on the confirm button in the confirmation prompt
    Given the admin is logged in to the admin dashboard
    And the admin navigates to the user management page
    And the admin selects a user and clicks the delete button
    And a confirmation prompt is displayed asking the admin to confirm the deletion
    When the admin does not click "confirm" and leaves the page
    Then the selected user's account should not be deleted
    And the user management page should remain unchanged

  Scenario: Delete a user account with pending ads
    Given the admin is logged in to the admin dashboard
    And the admin navigates to the user management page
    And the selected user has multiple associated resources, such as pending ads.
    When the admin selects the user and clicks the delete button
    Then a prompt should be displayed warning the admin about the pending ads
    And the admin should be given the option to either delete the pending ads and the account or keep the account undeleted
    And the selected user's account should be deleted
    And a confirmation message should be displayed to confirm that the account has been deleted
    And the deleted user should no longer be listed in the user management page
