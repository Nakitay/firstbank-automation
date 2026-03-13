Feature: Login functionality

  Scenario: User login

    Given user is on login page
    When user enters username and password
    Then user should see dashboard page