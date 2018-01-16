Feature: Test authentication
  In order to test the sign in page
  As a tester
  I need creds


  Scenario: Sign in
    Given website is "https://www.berkeleygroup.co.uk/my-home/sign-in"
    Then i see login page
    And i enter user name "mtripathi.manvendra@gmail.com"
    When i click on next button after entering the user name
    Then i see password box
    And i fill password as "manavT1990"
    Then i get landed to dashboard and see my name appearing on page with Welcome tag
