@obsolete

Feature: Obsolete methods
  In order to progress
  As a programmer
  I want to expire old methods

  Scenario: Using #creatable?
    Given I am logged in as an employee
    When I am on the obsolete page
    Then I should not see "Old Style Create"

  Scenario: Using #reabable?
    Given I am logged in as an employee
    And a parent_widget exists
    When I am on the obsolete page
    Then I should not see "Old Style Show"

  Scenario: Using #updatable?
    Given I am logged in as an employee
    And a parent_widget exists
    When I am on the obsolete page
    Then I should not see "Old Style Edit"

  Scenario: Using #deletable?
    Given I am logged in as an employee
    And a parent_widget exists
    When I am on the obsolete page
    Then I should not see "Old Style Delete"