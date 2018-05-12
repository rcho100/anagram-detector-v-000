require 'pry'
class Anagram
  attr_accessor :word
  def initialize(word)
    @word = word
  end

  def match(word_list)
    #binding.pry
    if word_list.select {|word| word.split("").sort == @word.split("").sort} == nil
      []
    else
      word_list.select {|word| word.split("").sort == @word.split("").sort}
      #another way to do this is to use .chars instead of .split("")
    end
  end

end
