@helper

Feature: Helper methods
  In order to easily protect my application
  As a programmer
  I want shortcuts

  Scenario: Creating a Parent Widget
    Given I am logged in as an "employee"
    And I am on the parent_widgets page
    Then I should see "Create"

  Scenario: Creating a Child Widget
    Given I am logged in as an "employee"
    And a "parent_widget" exists
    And I am on the child_widgets page
    Then I should see "Create Child"
