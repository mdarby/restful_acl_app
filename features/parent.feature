@parent

Feature: Parent resources
  In order to protect my application
  As a programmer
  I want to protect resources

  Background:
    Given I am logged in as an employee

  Scenario: Viewing parent resources
    Given a parent_widget exists
    When I am on the parent_widgets page
    Then I should see "Parent Widgets"

  Scenario: Viewing a parent resource
    Given a parent_widget exists
    When I am on the parent_widgets page
    And I follow "View Parent"
    Then I should be on the parent_widget page

  Scenario: Creating a parent resource
    Given I am on the parent_widgets page
    And I follow "Create"
    Then I should be on the new_parent_widget page

  Scenario: Updating a parent resource
    Given a parent_widget exists
    And I am on the parent_widget page
    When I follow "Edit"
    Then I should be on the edit_parent_widget page

