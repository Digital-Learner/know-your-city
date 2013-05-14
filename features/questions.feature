Feature: Creating statements for quiz

  In order for users to be able to play our game
  As a user 
  I want to be able to add statements that can be either fact or fiction

  Scenario: Creating statements
    Given I am on the statements create page
    When I submit a question with its correct answer
    Then I should see "Thank you for adding to London Fact or Fiction"