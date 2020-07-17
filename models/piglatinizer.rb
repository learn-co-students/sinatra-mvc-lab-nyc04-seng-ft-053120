
require 'pry'
class PigLatinizer

    def piglatinize(string)
        a = string.split(" ")
        b = a.map {|word| piglatinize_word(word)}
        b.join(" ")
    end

    def piglatinize_word(word)
        first_letter = word[0].downcase
        vowels = %w(a e i o u)
        if vowels.include?(first_letter)
            "#{word}way"
        else
            consonants = [ ]
            consonants << word[0]
            if vowels.include?(word[1]) == false
                consonants << word[1]
                if vowels.include?(word[2]) == false
                    consonants << word[2]
                end
            end
            "#{word[consonants.length..-1] + consonants.join + "ay"}"
        end
    end

end
