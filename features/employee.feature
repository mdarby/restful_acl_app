Feature: Employee features
  In order to protect my application
  As a programmer
  I want to lock down certain actions

  Scenario: An Employee viewing Parent Widgets
    Given I am logged in as an "employee"
    And a "parent_widget" exists
    And I am on the parent_widgets page
    Then I should see "Parent Widget"

  Scenario: An Employee creating a Parent Widget
    Given I am logged in as an "employee"
    And I am on the new_parent_widget page
    Then I should see "Create a Parent Widget"

  Scenario: An Employee viewing a specific Parent Widget
    Given I am logged in as an "employee"
    And a "parent_widget" exists
    And I am on the parent_widget page
    Then I should see "Parent Widget"

  Scenario: An Employee editing a Parent Widget
    Given I am logged in as an "employee"
    And a "parent_widget" exists
    And I am on the edit_parent_widget page
    Then I should see "Edit Parent Widget"

  Scenario: An Employee deleting a Parent Widget
    Given I am logged in as an "employee"
    And a "parent_widget" exists
    And I am on the parent_widget page
    And I follow "Destroy"
    Then I should not see "Error"
