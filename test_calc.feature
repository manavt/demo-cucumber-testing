Feature: To test a class
  In order to test Calc class
  As an tester
  I want to get result in array format

  Scenario: To add two values
    Given the value of a is "8" and the value of b is "20"
    When i give these two values as args
    Then Calc method add the value
    And return values is '[28]'
