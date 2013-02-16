Feature: Sign up
  As a visitor to the website
  I want to be able to sign up
  so I can be registered as a user on the site

  Background:
    Given I am not logged in

  Scenario: Visitor views home page
    When I visit the home page
    Then I should see a link "Sign up"

  Scenario:  Visitor decides to register
    When I visit the home page
    And I follow the "Sign up" link
    Then I should see a form with "Sign up"
    And I should see a button "Sign up"

  Scenario: Visitor provides valid details
    When I visit the home page
    And I follow the "Sign up" link
    And I fill in "Email" with "bob@example.com"
    And I fill in "user_password" with "secret"
    And I fill in "user_password_confirmation" with "secret"
    And I press "Sign up"
    Then I should see the message "Welcome! You have signed up successfully."
    And I visit the home page
