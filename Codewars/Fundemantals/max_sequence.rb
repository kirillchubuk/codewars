=begin
https://www.codewars.com/kata/54521e9ec8e60bc4de000d6c/train/ruby
The maximum sum subarray problem consists in finding the maximum sum of a contiguous subsequence in an array or list of integers:

maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4]
-- should be 6: [4, -1, 2, 1]

Easy case is when the list is made up of only positive numbers and the maximum sum is the sum of the whole array.
If the list is made up of only negative numbers, return 0 instead.

Empty list is considered to have zero greatest sum. Note that the empty list or array is also a valid sublist/subarray.
=end

def max_sequence(arr)
  # Empty array or all negative
  return 0 if arr.empty? || arr.all?(&:negative?)
  # All positive
  return arr.inject(:+) if arr.all?(&:positive?)
  # Other cases
  max_current = max_global = 0
  arr.each do |el|
    max_current = [el, el + max_current].max
    max_global = [max_current, max_global].max
  end
  max_global
end

=begin
def max_sequence(arr)
  return 0 unless arr.length > 0 && arr.any?(&:positive?)
  (1..(arr.length)).to_a.map { |c| arr.each_cons(c).map {|a| a.sum}.max}.max
end


def max_sequence(array)
  (1..array.size).map { |i| array.each_cons(i).map(&:sum) }.flatten.push(0).max
end


def max_sequence(arr)
  return 0 unless arr.length > 0 && arr.any?(&:positive?)
  (1..(arr.length)).to_a.map { |c| arr.each_cons(c).map {|a| a.sum}.max}.max
end
=end

puts max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4])