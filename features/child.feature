@children

Feature: Child resources
  In order to protect my application
  As a programmer
  I want to protect children resources

  Background:
    Given I am logged in as an employee

  Scenario: Viewing childen resources
    Given a child_widget exists
    When I am on the parent_widget page
    And I follow "View Children Widgets"
    Then I should be on the child_widgets page

  Scenario: Viewing a child resource
    Given a child_widget exists
    When I am on the child_widgets page
    And I follow "View Child"
    Then I should be on the child_widget page

  Scenario: Creating a child resource
    Given a parent_widget exists
    And I am on the parent_widget page
    When I follow "Create Child Widget"
    Then I should be on the new_child_widget page

  Scenario: Updating a child resource
    Given a child_widget exists
    When I am on the child_widget page
    And I follow "Edit"
    Then I should be on the edit_child_widget page