Feature: Addition
  As a user
  I want to add two numbers
  So that I can get their sum

  Scenario: Add two positive numbers
    Given I have a calculator
    When I add 5 and 3
    Then the result should be 8

  Scenario Outline: Add various numbers
    Given I have a calculator
    When I add <number1> and <number2>
    Then the result should be <result>

    Examples:
      | number1 | number2 | result |
      | 0       | 0       | 0      |
      | -1      | 1       | 0      |
      | 10      | 20      | 30     |
      | -5      | -7      | -12    |
