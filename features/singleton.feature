@singleton

Feature: Singleton
  In order to protect my application
  As a programmer
  I want to protect singleton child resources

  Scenario: Viewing a singleton child resource
    Given I am logged in as an "employee"
    And a "singleton_widget" exists
    When I am on the parent_widget page
    And I follow "View Singleton Widget"
    Then I should be on the singleton_widget page

  Scenario: Creating a singleton child resource
    Given I am logged in as an "employee"
    And a "parent_widget" exists
    And I am on the parent_widget page
    When I follow "Create Singleton Widget"
    Then I should be on the new_singleton_widget page

  Scenario: Updating a singleton child resource
    Given I am logged in as an "employee"
    And a "singleton_widget" exists
    And I am on the singleton_widget page
    When I follow "Edit"
    Then I should be on the edit_singleton_widget page