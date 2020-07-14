require 'pry'
class PigLatinizer

    def piglatinize(string)
        string.split(" ").map do |word|
            case word[0]
            when /(?i)[bcdfghjklmnpqrstvwxyz]/
                consonant?(word) + "ay"
            else
                word + "way"
            end
        end
        .join(" ")
    end

    def consonant?(word)
        if word[0].match? /(?i)[bcdfghjklmnpqrstvwxyz]/
            modified_word = word.slice(1, word.length) + word.slice(0)
            consonant?(modified_word)
        else
            word
        end
    end

end