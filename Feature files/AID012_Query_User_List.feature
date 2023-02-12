Feature: Query User Lists
  As an admin
  I want to be able to search and filter user lists
  so that I can easily find and manage specific users.

  Scenario: View a list of all users
    Given the admin is logged in to the admin dashboard
    And the admin navigates to the user management page
    When the admin does not apply any filters or search criteria
    Then a complete list of all users should be displayed in the user management page
    And the list should be sorted by the default sort criteria (e.g. username, email address, or registration date)

  Scenario: Filter users by ascending name order
    Given the admin is logged in to the admin dashboard
    And the admin navigates to the user management page
    When the admin selects "Name (Ascending)" from the sort filter dropdown
    Then the user list should be sorted by username in ascending order

  Scenario: Filter users by descending name order
    Given the admin is logged in to the admin dashboard
    And the admin navigates to the user management page
    When the admin selects "Name (Descending)" from the sort filter dropdown
    Then the user list should be sorted by name in descending order

  Scenario: Search for a specific user
    Given the admin is logged in to the admin dashboard
    And the admin navigates to the user management page
    When the admin enters a username or email address in the search bar
    And clicks the search button
    Then the user list should be filtered to show only the user with that username or email

  Scenario: Search for a non-existing user
    Given the admin is logged in to the admin dashboard
    And the admin navigates to the user management page
    When the admin enters a username or email address in the search bar that does not match any existing users
    And clicks the search button
    Then an error message should be displayed indicating that no users were found matching the search criteria
    And the user list should remain unchanged.

  Scenario: Clear filters
    Given the admin is logged in to the admin dashboard
    And the admin navigates to the user management page
    And the admin has applied one or more filters
    When the admin clicks the clear filters button
    Then the user list should return to its original unfiltered state
    And the filters should be cleared from the filter bar