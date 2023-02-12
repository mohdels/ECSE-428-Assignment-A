Feature: Reset password
  As a user 
  I want to be able to reset my password if I have forgotten it 
  so that I can access my account again.

  Scenario: Successful password reset
    Given the user is on the password reset page
    When the user enters their registered email address
    And clicks the submit button
    Then the user should receive an email with a password reset link
    And the user should be able to reset their password using the link
    And the user should be able to successfully log in to their account with the new password

  Scenario: Invalid email address
    Given the user is on the password reset page
    When the user enters an email address that is not registered
    And clicks the submit button
    Then an error message should be displayed indicating the email address is not registered
    And the user should not receive an email with a password reset link

  Scenario: Incorrect email address format
    Given the user is on the password reset page
    When the user enters an incorrect email address format
    And clicks the submit button
    Then an error message should be displayed indicating the email address format is incorrect
    And the user should not receive an email with a password reset link
