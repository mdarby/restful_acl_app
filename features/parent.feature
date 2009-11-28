@parent

Feature: Parent resources
  In order to protect my application
  As a programmer
  I want to protect resources

  Scenario: Viewing parent resources
    Given I am logged in as an "employee"
    And a "parent_widget" exists
    When I am on the parent_widgets page
    Then I should see "Parent Widgets"

  @debug
  Scenario: Viewing a parent resource
    Given I am logged in as an "employee"
    And a "parent_widget" exists
    When I am on the parent_widget page
    Then I should see "Parent Widget"

  Scenario: Creating a parent resource
    Given I am logged in as an "employee"
    When I am on the parent_widgets page
    Then I should see "Create"

  Scenario: Updating a parent resource
    Given I am logged in as an "employee"
    And a "parent_widget" exists
    When I am on the edit_parent_widget page
    Then I should see "Parent Widget"
