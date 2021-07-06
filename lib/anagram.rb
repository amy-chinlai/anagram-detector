require 'pry'

class Anagram
    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(array)
        result = []
        # array.each do |word|
        #     scramble = @word.split("").sort.join
        #     if scramble == word
        #         result << scramble
        #     end
        scramble = @word.split("").sort.join
        array.each do |matchee|
            if matchee == scramble
                result << matchee
            end
        end
        result
    end
end