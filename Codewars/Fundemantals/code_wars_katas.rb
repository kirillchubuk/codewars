#def is_isogram(string)
#=begin
#An isogram is a word that has no repeating letters, consecutive or non-consecutive.
#Implement a function that determines whether a string that contains only letters is an isogram.
#Assume the empty string is an isogram. Ignore letter case.
#=end
#  #your code here
#  string.chars.uniq.length == string.length ? true : false
#end
#
#def filter_list(l)
#=begin
#In this kata you will create a function that takes a list of non-negative integers and strings
#and returns a new list with the strings filtered out.
#=end
#  # return a new list with the strings filtered out
#  # 1
#  l.select { |el| el.is_a? Integer }
#  # 2
#  l.keep_if { |i| i.is_a? Integer } # Deletes every element of self
#end
#
#def binary_array_to_number(arr)
#=begin
#Given an array of ones and zeroes, convert the equivalent binary value to an integer.
#Eg: [0, 0, 0, 1] is treated as 0001 which is the binary representation of 1.
#end
#=end
#  # 1
#  #l = arr.length - 1
#  #sum = 0
#  #arr.each_with_index do |el, index|
#  #  sum += el * 2 ** (l - index)
#  #end
#  #return sum
#  ## 2
#  #arr.reduce(0) { |sum, n| 2 * sum + n }
#  ## 3
#  #arr.join().to_i(2)
#  ## 4
#  (arr * '').to_i(2)
#end
#
#def phone_number(numbers)
#  # 1
#  numbers.join.gsub(/(\d{3})(\d{3})(\d{4})/, '(\1) \2-\3')
#  # 2
#  numbers = numbers.dup
#  "(###) ###-####".gsub!(/#/) { numbers.shift.to_s } # shift method takes the first element in the array
#end
#
#def isTriangle(a,b,c)
#=begin
#Implement a method that accepts 3 integer values a, b, c. The method should return true if a triangle can be built with
#the sides of given length and false in any other case.
#(In this case, all triangles must have surface greater than 0 to be accepted).
#=end
#  # 1
#  a < b + c && b < a + c && c < a + b ? true : false
#  # 2
#  short1, short2, long = [a, b, c].sort
#  long < short1 + short2
#end
#
#def panagram?(string)
#=begin
#A pangram is a sentence that contains every single letter of the alphabet at least once.
#For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram,
#because it uses the letters A-Z at least once (case is irrelevant).
#=end
#  # 1
#  #string.downcase.gsub(/[^a-z]/, "").gsub(/(.)(?=.*\1)/, "").length == 26
#  # 2
#  ('a'..'z').all? { |x| string.downcase.include?(x) }
#end
#
#def expanded_form(num)
#  num.to_s
#      .chars
#      .reverse
#      .map.with_index { |d, idx| d.to_i * 10**idx }
#      .reject(&:zero?)
#      .reverse
#      .join (' + ')
#end
#
#def expanded_form(num)
#  res = []
#  pow = 1
#  while num >= pow
#    rest = num / pow % 10
#    res << rest * pow if rest > 0
#    pow *= 10
#  end
#
#  res.reverse.join(' + ')
#end
#
#def expanded_form(num)
#  ans = num.to_s.chars.map.with_index {|n, i| n + ("0" * (num.to_s.chars.slice(i..-1).length - 1))}
#  ans.select {|n| n.to_i > 0}.join(" + ")
#end
#
#
#
#7 kyu
#60
#6 kyu
#Write Number in Expanded Form
#64318292% of 2,8731,206 of 20,644Belax8
#Ruby
#TRAIN AGAINNEXT KATA
#Details
#Solutions
#Forks (6)
#Discourse (133)
#Add to Collection|Share this kata:
#                                 Show Kata Description
#Show Kata Test Cases
#Show Me:
#         All Solutions
#Solutions of Users I am Following
#Sort By:
#         Best Practices
#CleverNewestOldest
#njohnson7, BGuimberteau
#def expanded_form(num)
#  num.to_s
#      .chars
#      .reverse
#      .map.with_index { |d, idx| d.to_i * 10**idx }
#      .reject(&:zero?)
#      .reverse
#      .join (' + ')
#end
#Best Practices29Clever52
#2ForkLink
#nekokat
#def expanded_form(num)
#  num.to_s.chars.reverse.map.with_index{|i,j| i == "0" ? nil : i + "0" * j }.compact.reverse.join(" + ")
#end
#Best Practices8Clever4
#0ForkLink
#TechbrunchFR
#def expanded_form(num)
#  num.digits
#      .map
#      .with_index {|i, idx| i * 10**idx}
#      .reject(&:zero?)
#      .reverse
#      .join(' + ')
#end
#Best Practices4Clever3
#0ForkLink
#Unihedron
#def expanded_form(num)
#  v=num.to_s
#  b=v.size-1
#  v.chars.map.with_index{|x,i|x+?0*(b-i) if x>?0}.compact.join' + '
#end
#Best Practices2Clever1
#0ForkLink
#zloyrusskiy
#def expanded_form(num)
#  res = []
#  pow = 1
#  while num >= pow
#    rest = num / pow % 10
#    res << rest * pow if rest > 0
#    pow *= 10
#  end
#
#  res.reverse.join(' + ')
#end
#Best Practices2Clever0
#0ForkLink
#BurstNova
#def expanded_form(num)
#  ans = num.to_s.chars.map.with_index {|n, i| n + ("0" * (num.to_s.chars.slice(i..-1).length - 1))}
#  ans.select {|n| n.to_i > 0}.join(" + ")
#end
#Best Practices2Clever0
#0ForkLink
#cgibsonmm
#def expanded_form(num)
#  num_arr = num.to_s.split('')
#  tick = '1'
#  new_arr = []
#  num_arr.reverse.each do |num|
#    unless num == '0'
#      new_arr << (num.to_i * tick.to_i).to_s
#    end
#    tick << '0'
#  end
#  new_arr.reverse.join(' + ')
#end
#

def likes(names)
  #your code here
  case names.size
  when 0
    puts "no one likes this"
  when 1
    "%s likes this" % names
  when 2
    "%s and %s like this" % names
  when 3
    puts "%s, %s and %s like this" % names
  else
    puts "%s, %s and %d others like this" % [names.first, names[1], names.size - 2]
  end
end

def scramble(s1,s2)
=begin
Complete the function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged
to match str2, otherwise returns false.
=end
  s2.chars.uniq.all? { |el| s1.count(el) >= s2.count(el) }
end


def sort_array(source_array)
=begin
You have an array of numbers.
Your task is to sort ascending odd numbers but even numbers must be on their places.

Zero isn't an odd number and you don't need to move it. If you have an empty array, you need to return it.

Example

sort_array([5, 3, 2, 8, 1, 4]) == [1, 3, 2, 8, 5, 4]
sort_array([5, 3, 2, 8, 1, 4]) == [1, 3, 2, 8, 5, 4]
=end
  #your code here
  odds = source_array.select(&:odd?).sort
  source_array.map { |el| el.even? ? el : odds.shift }
end

def convertFracts(lst)
  # your code
  denoms_array = lst.transpose.last
  lcm = denoms_array.reduce(:lcm)
  lst.map { |nom, den| [lcm / den * nom, lcm] }
end

def last_digit(n1, n2)
  ## 1
  #n2.zero? ? 1 : ((n1 % 10) ** (n2 % 4 + 4))

  # 2
  return 1 if n2.zero?

  last_n1 = n1 % 10
  n2_mod  = (n2 % 4).zero? ? 4 : (n2 % 4)

  (last_n1 ** n2_mod)
end

regex = /(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?!.*\s)(?!.*\W)(?!.*_).{6,}/
regex2 = /(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])^[a-zA-Z0-9]{6,}$/

s = '[]'
puts arr = s.gsub(/[\\\[\]"]/,"") #.split(/,(?!-d\.c\.)/)
p !arr.empty?
p [].empty?