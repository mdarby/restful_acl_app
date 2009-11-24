@singleton

Feature: Singleton
  In order to protect my application
  As a programmer
  I want to protect singleton child resources

  Scenario: Viewing a singleton child resource
    Given I am logged in as an "employee"
    And a "singleton_widget" exists
    When I am on the singleton_widget page
    Then I should see "Parent Widget"
    And I should see "Singleton Widget"

  Scenario: Creating a singleton child resource
    Given I am logged in as an "employee"
    And a "parent_widget" exists
    When I am on the new_singleton_widget page
    Then I should see "Parent Widget"
    And I should see "Singleton Widget"

  Scenario: Updating a singleton child resource
    Given I am logged in as an "employee"
    And a "singleton_widget" exists
    When I am on the edit_singleton_widget page
    Then I should see "Parent Widget"
    And I should see "Singleton Widget"