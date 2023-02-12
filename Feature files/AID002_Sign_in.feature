Feature: Sign in to existing account
  As a user
  I want to be able to sign into my existing account
  so that I can access my account information and/or .

  Scenario: Successful sign in
    Given the user is on the sign in page
    When the user enters their email address and password
    And clicks the sign in button
    Then the user should be redirected to their account page
    And a successful sign in message should be displayed

  Scenario: Incorrect password
    Given the user is on the sign in page
    When the user enters their email address and an incorrect password
    And clicks the sign in button
    Then an error message should be displayed indicating the email address or password is incorrect
    And the user should remain on the sign in page

  Scenario: Email address not registered
    Given the user is on the sign in page
    When the user enters an email address that is not registered
    And clicks the sign in button
    Then an error message should be displayed indicating the email address is not registered
    And the user should remain on the sign in page
    
  Scenario: Missing email and/or password fields
    Given the user is on the sign in page
    When the user leaves the email and/or password fields blank
    And clicks on the sign in button
    Then an error message should appear indicating that the missing fields must be filled in
