Feature: Division
  As a user
  I want to divide one number by another
  So that I can get their quotient

  Scenario: Divide two positive numbers
    Given I have a calculator
    When I divide 10 by 2
    Then the result should be 5

  Scenario Outline: Divide various numbers
    Given I have a calculator
    When I divide <number1> by <number2>
    Then the result should be <result>

    Examples:
      | number1 | number2 | result |
      | 10      | 2       | 5      |
      | 0       | 5       | 0      |
      | 15      | 3       | 5      |
      | -20     | 4       | -5     |
      |-100     |100      |0      |
