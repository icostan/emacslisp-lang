Feature: Hash to hash
  As a ruby user
  I want to turn 1.9 hash style in 2.0 style.

  Scenario: Turn symbol hash to hash literal
    When I insert ":a => true"
    And I turn on ruby-mode
    And I press "C-c r h"
    Then I should see "a: true"

  Scenario: Use the Ruby 1.9 hash literal syntax when your hash keys are symbols. 
    When I insert "hash = { :one => 1, :two => 2, :three => 3 }"
    And I turn on ruby-mode
    And I press "C-c r h"
    # Then I should see "hash = { one: 1, two: 2, three: 3 }"

