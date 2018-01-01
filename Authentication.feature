Feature: Authentication

  As a regular user
  I want to be able to authenticate to the application
  So that I can see my account details

  Scenario 1: Login with correct login and correct password
    Given Regular user is not logged in
    When Regular user goes to the signup page
    And Regular user  fills in "login" with "admin01_pensjonacik_rodzinny@pensjonacikrodzinny.szczecin.pl"
    And Regular user  fills in "password" with "pass!egIed9"
    And Regular user  presses "Sign up"
    Then  Regular user should see "You are now logged in"
    And Regular user can see account details view:
  - Ewa
  - Giedziun
  - admin01_pensjonacik_rodzinny@pensjonacikrodzinny.szczecin.pl
  - admin01_pensjonacik_rodzinny@pensjonacikrodzinny.szczecin.pl

  Scenario 2:  user is not registered
    Given Regular user is not logged in
    When Regular user goes to the signup page
    And Regular user  fills in "login" with "admin01_pensjonacik_rodzinny@pensjonacikrodzinny.szczecin.pl"
    And Regular user  fills in "password" with "pass!egIed9"
    And Regular user  presses "Sign up"
    Then Regular user should see "Authentication failed. Login or password are incorrect."
    And Regular user can’t see account details view

  Scenario 3: Login with incorrect login and password
    Given Regular user is not logged in
    When Regular user goes to the signup page
    And Regular user  fills in "login" with "admin01_pensjonacic_rodzinny@pensjonacikrodzinny.szczecin.pl"
    And Regular user  fills in "password" with "pass!egiedz"
    And Regular user  presses "Sign up"
    Then Regular user should see "Authentication failed. Login or password are incorrect."

  Scenario 4: Login with incorrect login and correct password
    Given Regular user is not logged in
    When Regular user goes to the signup page
    And Regular user  fills in "login" with "admin01_pensjonacik_rodzinny@pensjonacikrodzinny.szczecin.pg"
    And Regular user  fills in "password" with "pass!egIed9"
    And Regular user  presses "Sign up"
    Then Regular user should see "Authentication failed. Login or password are incorrect."

  Scenario 5: Login with correct login and incorrect password
    Given Regular user is not logged in
    When Regular user goes to the signup page
    And Regular user  fills in "login" with "admin01_pensjonacik_rodzinny@pensjonacikrodzinny.szczecin.pl"
    And Regular user  fills in "password" with "pass!EGIed9"
    And Regular user  presses "Sign up"
    Then Regular user should see "Authentication failed. Login or password are incorrect."
    And Regular user can’t see account details view:
    Ewa
    Giedziun
    admin01_pensjonacik_rodzinny@pensjonacikrodzinny.szczecin.pl
    admin01_pensjonacik_rodzinny@pensjonacikrodzinny.szczecin.pl

  Scenario 6: login field validation (more than 60 characters)
    Given Regular user is not logged in
    When Regular user goes to the signup page
    And Regular user  fills in "login" with "admin001_pensjonacik_rodzinny@pensjonacikrodzinny.szczecin.pl"
    And Regular user  fills in "password" with "pass!egIed9"
    And Regular user  presses "Sign up"
    Then Regular user should see "Login validation error"

  Scenario 7: server request
    Given Regular user is not logged in
    When Regular user goes to the signup page
    And Regular user  fills in "login" with "admin01_pensjonacik_rodzinny@pensjonacikrodzinny.szczecin.pl"
    And Regular user  fills in "password" with "pass!egIed9"
    And Regular user  presses "Sign up"
    Then  Regular user should see "404:file not found"

