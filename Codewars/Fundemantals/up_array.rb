# https://www.codewars.com/kata/5514e5b77e6b2f38e0000ca9/train/ruby
=begin
Given an array of integers of any length, return an array that has 1 added to the value represented by the array.

the array can't be empty
only non-negative, single digit integers are allowed
Return nil (or your language's equivalent) for invalid inputs.

Examples
For example the array [2, 3, 9] equals 239, adding one would return the array [2, 4, 0].

[4, 3, 2, 5] would return [4, 3, 2, 6]
=end

def up_array(arr)
  return nil if arr.any?(&:negative?) || arr.empty? || arr.any?{|el| el > 9}
  arr.join.next.chars.map(&:to_i)
end

p up_array([2,3,9])