# https://www.codewars.com/kata/5259510fc76e59579e0009d4/train/ruby
require "rubygems/text"

class Dictionary
  include Gem::Text

  def initialize(words)
    @words=words
  end

  # def find_match(word, term)
  #   matching = 0
  #   word.map do |char|
  #     index = term.find_index(char)
  #     if index
  #       matching += 1
  #       term.delete(char)
  #     end
  #   end
  #   matching
  # end

  def find_most_similar(term)
    @words.sort_by { |word| levenshtein_distance(term, word) }.first
  end
end

words=['Source', 'Target']
test_dict=Dictionary.new(words)
puts test_dict.find_most_similar('Sourcesa')