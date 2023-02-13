Feature: Create Post for Used Textbook

  As a seller
  I want to be able to create a post for a used textbook
  so that other users can see and purchase/trade it.

  Scenario: Create a new post for a used textbook (successful scenario)
    Given the user is logged in to their account
    When the user navigates to the "Create Post" page
    And the user enters the required information for the textbook, including title, author, edition, ISBN/code, condition and photo
    And the user sets a price or indicates that they are willing to trade the textbook, and for which textbook they would like to trade
    And the user clicks "Create Post"
    Then the user should be redirected to the textbook listing page
    And the textbook should be visible to other users in the listings
    And the user should receive a confirmation that the post has been created successfully.

  Scenario: Missing required fields
    Given the user is logged in to their account
    And on the post creation page
    When the user leaves one or more required fields blank
    And clicks on the "Create Post" button
    Then an error message should appear, indicating that the missing fields must be filled in