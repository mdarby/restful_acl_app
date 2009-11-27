Feature: Admin features
  In order to protect my application
  As a programmer
  I want to lock down certain actions

  Scenario: An Admin viewing Parent Widgets
    Given I am logged in as an "admin"
    And a "parent_widget" exists
    And I am on the parent_widgets page
    Then I should see "Parent Widget"

  Scenario: An Admin creating a Parent Widget
    Given I am logged in as an "admin"
    And I am on the new_parent_widget page
    Then I should see "Create a Parent Widget"

  Scenario: An Admin viewing a specific Parent Widget
    Given I am logged in as an "admin"
    And a "parent_widget" exists
    And I am on the parent_widget page
    Then I should see "Parent Widget"

  Scenario: An Admin editing a Parent Widget
    Given I am logged in as an "admin"
    And a "parent_widget" exists
    And I am on the edit_parent_widget page
    Then I should see "Edit Parent Widget"

  Scenario: An Admin deleting a Parent Widget
    Given I am logged in as an "admin"
    And a "parent_widget" exists
    And I am on the parent_widget page
    And I follow "Destroy"
    Then I should not see "Error"
