@validTestCase
Scenario: Log in to my account

Given I am on Home page
When  I go to LogIn page
And I fill login field with login "merida20@o2.pl"
And I fill password field with password "Cecylia20"
And I hit button Sign in
And I log in and I click on My personal information tab
Then I can see my personal information

@invalidTestCases
Scenario Outline: Invalid test cases

Given I am on Home page
When I go to LogIn page
And I fill login field with <login>
And I fill password field with <password>
And I press button Sign in
Then I can see error message

Examples:
| login | password |
| merida20@o2.pl | Cec|
| merida20@o2.pl | Cecy|
| merida20@tlen.pl | Cecyl|
| merida20@tlen.pl |      |
| 20@tlen.pl | Cecylia20|
| merida20.pl | Cecylia20|
| merida20@tlen | Cecylia20|


