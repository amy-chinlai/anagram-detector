require 'pry'

class Anagram
    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(array)
        result = []
        scramble = @word.split("").sort.join
        array.each do |word|
            if scramble == word.split("").sort.join
                result << word
            end
        end
        result
    end
end