=begin
https://www.codewars.com/kata/5235c913397cbf2508000048/train/ruby
Create a simple calculator that given a string of operators (), +, -, *, / and numbers
separated by spaces returns the value of that expression

Example:
Calculator.new.evaluate("2 / 2 + 3 * 4 - 6") # => 7
=end

class Calculator
  def evaluate(string)
	end

	private
	def division(n, m)
		n / m
	end
end