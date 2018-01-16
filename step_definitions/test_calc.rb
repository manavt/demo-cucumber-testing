require 'byebug'


Given("the value of a is {string} and the value of b is {string}") do |string, string2|
  @a = string.to_i
  @b = string2.to_i
  @calc = Calc.new
  # pending
end

When("i give these two values as args") do
  @result = @calc.add(@a, @b)
end

Then("Calc method add the value") do
  @result == [@a + @b]
end

Then("return values is {string}") do |string|
 x = @result == eval(string)
end
