require 'pry'
class Anagram
  attr_accessor :word
  def initialize(word)
    @word = word
  end

  def match(word_list)
    #binding.pry
    if word_list.detect {|word| word.split("").sort == @word.split("").sort} == nil
      []
    else
      word_list.detect {|word| word.split("").sort == @word.split("").sort}.split
    end
  end
end
