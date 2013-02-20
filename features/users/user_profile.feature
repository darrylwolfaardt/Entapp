Feature: Manage Profile
  As a registered user
  I want to be able to sign in
  so I can edit my personal profile


  Scenario Outline: Show or hide edit profile link

    Given the following user records and role assignments
      | name   | password | rolename |
      | phredd | secret12 | user     |
      | admin  | secret12 | admin    |

    And I am logged in as "<login>" with password "secret12"
    When I visit the profile for "<profile>"
    Then I should <action>

  Examples:
  | login  | profile | action                 |
  | admin  | phredd  | see "Edit Profile"     |
  #| phredd | phredd  | see "Edit Profile"     |
  | guest  | phredd  | not see "Edit Profile" |
  | phredd | admin   | not see "Edit Profile" |
  | phredd | admin   | see "admin" |




