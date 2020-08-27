=begin
Create a RomanNumerals class that can convert a roman numeral to and from an integer value.
It should follow the API demonstrated in the examples below. Multiple roman numeral values will be tested for each helper method.

Modern Roman numerals are written by expressing each digit separately starting with the left most digit and
skipping any digit with a value of zero. In Roman numerals 1990 is rendered: 1000=M, 900=CM, 90=XC; resulting in MCMXC.
2008 is written as 2000=MM, 8=VIII; or MMVIII.
1666 uses each Roman symbol in descending order: MDCLXVI.

RomanNumerals.to_roman(1000) # should return 'M'
RomanNumerals.from_roman('M') # should return 1000
=end

# ===== Variant #1 =====
# class RomanNumerals
# 	FROM_ROMAN = {
#    'M'  => 1000,
#    'CM' => 900,
#    'D'  => 500,
#    'C'  => 100,
#    'CD' => 400,
#    'XC' => 90,
#    'L'  => 50,
#    'XL' => 40,
#    'X'  => 10,
#    'IX' => 9,
#    'V'  => 5,
#    'IV' => 4,
#    'I'  => 1
#  }
#
# 	TO_ROMAN = FROM_ROMAN.invert
#
# 	def self.to_roman(number)
#    result = ''
#    while number > 0
#      mapping = TO_ROMAN.detect { |k,v| k <= number }
#      number -= mapping.first
#      result += mapping.last
#    end
#
#    result
# 	end
#
# 	def self.from_roman(string)
# 		result = 0
# 		while string.length > 0
# 			mapping = FROM_ROMAN.detect { |k,v| string.gsub! /^#{k}/, '' }
# 			result += mapping.last
# 		end
#
# 		result
# 	end
# end

# ===== Variant #2 =====
class RomanNumerals
	MAPPING = {
		"M"  => 1000,
		"CM" => 900,
		"D"  => 500,
		"CD" => 400,
		"C"  => 100,
		"XC" => 90,
		"L"  => 50,
		"XL" => 40,
		"X"  => 10,
		"IX" => 9,
		"V"  => 5,
		"IV" => 4,
		"I"  => 1
	}
	PATTERN = Regexp.union(MAPPING.keys)

	def self.to_roman(number)
		MAPPING.inject("") do |result, (key, value)|
			times, number = number.divmod(value)
			result << key * times
		end
	end

	def self.from_roman(roman)
		roman.scan(PATTERN).inject(0) { |sum, key| sum + MAPPING[key] }
	end
end

p RomanNumerals.to_roman(4001)
p RomanNumerals.from_roman('CMCDXLVII')