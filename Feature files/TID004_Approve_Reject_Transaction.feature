Feature: Accept/Reject payment offer
  As a seller
  I want to be able to accept or reject proposed transaction
  So that I can accept/decline offers for my book

  Scenario: Accept payment offer successfully
    Given the seller has received a proposed transaction
    When the seller accepts the proposed transaction
    Then the offer should be marked as accepted
    And the corresponding transaction should be added to the seller and buyer's transactions history

  Scenario: Reject payment offer successfully
    Given the seller has received a proposed transaction
    When the seller rejects the proposed transaction
    Then the offer should be marked as rejected and the buyer should not be charged for the transaction


