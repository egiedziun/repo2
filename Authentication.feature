Feature: Authentication

  As a regular user
  I want to be able to authenticate to the application
  So that I can see my account details

  Background:
    Given I am regular user
    And I am not logged in
    And I go to the signup page

  Scenario Outline: successful authenticate to the application
    Given I am registered user
    When I fill login field with <login>
    And I fill password  field with <password>
    And I press Sign up
    Then I can see account details view – name, surname, email address, mailing address
  Examples:
  |login									                                      | password|
  |admin_pensjonacik_rodzinny1@pensjonacikrodzinny.szczecin.pl  |pass!egIed9|
  |admin_pensjonacik_rodzinny10@pensjonacikrodzinny.szczecin.pl |pass!egIed9|

  Scenario: user is not registered unsuccessful authenticate to the application
    Given I am not registered user
    When I fill login field with "admin_pensjonaci_rodziny@pensjonacikrodzinny.szczecin.pl"
    And I fill  password field with "pass!egI9"
    And I press Sign up
    Then I should see "Authentication failed. Login or password are incorrect."
    And I can’t see account details view

  Scenario Outline: other cases of unsuccessful authenticate to the application
    When I fill login field with <login>
    And I fill password  field with <password>
    And I press Sign up
    Then I should see "Authentication failed. Login or password are incorrect."
    Examples:
      |login									                                        |password	|
      |a@pensjonacikrodzinny.szczecin.pl                              |pass!EGIed9|
      |admin                                                          |pass!EGIed9|
      |admin_pensjonacik_rodzinny1@pensjonacikrodzinny.szczecin.pl    |pass!egiedz|
      |admin_pensjonacik_rodzinny@pensjonacikrodzinny.szczecin.pg     |pass!egIed9|
      |admin_pensjonacik_rodzinny100@pensjonacikrodzinny.szczecin.pl  |pass!egIed9|
      |adminpensjonacikrodzinny(at)pensjonacikrodzinny.szczecin.pl    |pass!egIed9|
      |adminpensjonacikrodzinny@pensjonacikrodzinny.szczecinpl        |pass!egIed9|

  Scenario: server request

    Given  I am not registered user
    When I fill login field with “admin_pensjonacik_rodzinny@pensjonacikrodzinny.szczecin.pl"
    And I fill password field with "pass!egIed9"
    And I press Sign up
    Then  I should see "404:file not found"






