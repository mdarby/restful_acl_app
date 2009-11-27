@children

Feature: Child resources
  In order to protect my application
  As a programmer
  I want to protect children resources

  Scenario: Viewing a childen resources
    Given I am logged in as an "employee"
    And a "child_widget" exists
    When I am on the child_widgets page
    Then I should see "Parent Widget"
    And I should see "Child Widget"

  Scenario: Viewing a child resource
    Given I am logged in as an "employee"
    And a "child_widget" exists
    When I am on the child_widget page
    Then I should see "Parent Widget"
    And I should see "Child Widget"

  Scenario: Creating a child resource
    Given I am logged in as an "employee"
    And a "parent_widget" exists
    When I am on the new_child_widget page
    Then I should see "Parent Widget"
    And I should see "Child Widget"

  Scenario: Updating a child resource
    Given I am logged in as an "employee"
    And a "child_widget" exists
    When I am on the edit_child_widget page
    Then I should see "Parent Widget"
    And I should see "Child Widget"