Feature: Subtraction
  As a user
  I want to subtract one number from another
  So that I can get their difference

  Scenario: Subtract a smaller number from a larger number
    Given I have a calculator
    When I subtract 3 from 8
    Then the result should be 5

  Scenario Outline: Subtract various numbers
    Given I have a calculator
    When I subtract <number2> from <number1>
    Then the result should be <result>

    Examples:
      | number1 | number2 | result |
      | 10      | 5       | 5      |
      | 0       | 0       | 0      |
      | -1      | -1      | 0      |
      | 15      | 20      | -5     |
