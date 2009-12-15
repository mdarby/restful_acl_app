@intruder

Feature: Intruder features
  In order to protect my application
  As a programmer
  I want to lock down certain actions

  Background:
    Given I am logged in as an intruder

  Scenario: An Intruder viewing Parent Widgets
    Given a parent_widget exists
    And I am on the parent_widgets page
    Then I should see "Denied"

  Scenario: An Intruder creating a Parent Widget
    Given I am on the new_parent_widget page
    Then I should see "Denied"

  Scenario: An Intruder viewing a specific Parent Widget
    Given a parent_widget exists
    And I am on the parent_widget page
    Then I should see "Denied"

  Scenario: An Intruder editing a Parent Widget
    Given a parent_widget exists
    And I am on the edit_parent_widget page
    Then I should see "Denied"

  Scenario: An Intruder deleting a Parent Widget
    Given a parent_widget exists
    And I am on the parent_widget page
    Then I should see "Denied"
  