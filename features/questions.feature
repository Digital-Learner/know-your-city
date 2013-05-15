Feature: Creating statements for quiz

  In order for users to be able to play our game
  As a user 
  I want to be able to add statements that can be either fact or fiction

  Scenario: Creating questions
    Given I am on the statements create page
    When I submit a question with its correct answer
    Then I should see "Thank you for adding to London Fact or Fiction"

  Scenario: Invalid questions not saved
    Given I am on the statements create page
    When I submit an invalid form
    Then I should see "Sorry, your question was not saved"
