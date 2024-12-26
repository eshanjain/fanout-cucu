# features/step_definitions/calculator_steps.rb
require_relative '../../calculator'

Given("I have a calculator") do
  @calculator = Calculator.new
end

When("I add {int} and {int}") do |num1, num2|
  @result = @calculator.add(num1, num2)
end

When("I subtract {int} from {int}") do |num2, num1|
  @result = @calculator.subtract(num1, num2)
end

When("I divide {int} by {int}") do |num1, num2|
  @result = @calculator.divide(num1, num2)
end

When("I try to divide {int} by {int}") do |num1, num2|
  @divide_by_zero = -> { @calculator.divide(num1, num2) }
end

Then("the result should be {int}") do |expected_result|
  expect(@result).to eq(expected_result)
end

Then("the result should be {float}") do |expected_result|
  expect(@result).to be_within(0.001).of(expected_result)
end

Then("it should raise a ZeroDivisionError") do
  expect(@divide_by_zero).to raise_error(ZeroDivisionError)
end