Feature: Create Account
  As a user
  I want to be able to create an account on the website
  so that I can buy/sell/trade used textbooks.

  Scenario: Successful Account Creation
    Given the user is on the registration page
    When the user enters a valid email, username and password
    And clicks on the "Create Account" button
    Then the user should be redirected to the dashboard page
    And a confirmation message should appear, indicating that the account was created successfully

  Scenario: Email Already Exists
    Given the user is on the registration page
    When the user enters an email that is already registered
    And clicks on the "Create Account" button
    Then an error message should appear, indicating that the email is already registered

  Scenario: Missing Required Fields
    Given the user is on the registration page
    When the user leaves one or more required fields blank
    And clicks on the "Create Account" button
    Then an error message should appear, indicating that the missing fields must be filled in
