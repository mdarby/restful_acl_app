@context

Feature: Context-based access
  In order to protect my application
  As a programmer
  I want to provide context when deciding access

  Scenario: Editing a Child Widget in a closed Parent Widget
    Given I am logged in as an employee
    And a child_widget_in_closed_parent exists
    And I am on the child_widget page
    Then I should not see "Edit"

  Scenario: Editing a Child Widget in an open Parent Widget
    Given I am logged in as an employee
    And a child_widget exists
    And I am on the child_widget page
    Then I should see "Edit"

  Scenario: Creating a new Child Widget in a closed Parent Widget
    Given I am logged in as an employee
    And a closed_parent_widget exists
    And I am on the parent_widget page
    Then I should not see "Create Child Widget"

  Scenario: Creating a new Child Widget in an open Parent Widget
    Given I am logged in as an employee
    And a parent_widget exists
    And I am on the parent_widget page
    Then I should see "Create Child Widget"

  Scenario: Destroying a Child Widget in a closed Parent Widget
    Given I am logged in as an employee
    And a child_widget_in_closed_parent exists
    And I am on the child_widget page
    Then I should not see "Delete"

  Scenario: Destroy a Child Widget in an open Parent Widget
    Given I am logged in as an employee
    And a child_widget exists
    And I am on the child_widget page
    Then I should see "Delete"

  Scenario: Editing a Singleton Child Widget in a closed Parent Widget
    Given I am logged in as an employee
    And a singleton_widget_in_closed_parent exists
    And I am on the singleton_widget page
    Then I should not see "Edit"

  Scenario: Editing a Singleton Child Widget in an open Parent Widget
    Given I am logged in as an employee
    And a singleton_widget exists
    And I am on the singleton_widget page
    Then I should see "Edit"

  Scenario: Creating a new Singleton Child Widget in a closed Parent Widget
    Given I am logged in as an employee
    And a closed_parent_widget exists
    And I am on the parent_widget page
    Then I should not see "Create Singleton Widget"

  Scenario: Creating a new Singleton Child Widget in an open Parent Widget
    Given I am logged in as an employee
    And a parent_widget exists
    And I am on the parent_widget page
    Then I should see "Create Singleton Widget"

  Scenario: Destroying a Singleton Child Widget in a closed Parent Widget
    Given I am logged in as an employee
    And a singleton_widget_in_closed_parent exists
    And I am on the singleton_widget page
    Then I should not see "Delete"

  Scenario: Destroy a Singleton Child Widget in an open Parent Widget
    Given I am logged in as an employee
    And a singleton_widget exists
    And I am on the singleton_widget page
    Then I should see "Delete"
