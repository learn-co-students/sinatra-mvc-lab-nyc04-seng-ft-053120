class PigLatinizer
    def piglatinize(text)
      words = text.split(" ")
      vowels = "aeouiAEOUI"
      words.map { |word|
        index = 0
         while index < word.length
            break if vowels.include?(word[index])
            index +=1
        end
        new_word = word[index...word.length] + word[0...index]
        if index == 0
        new_word = new_word+"way"
        else
        new_word = new_word + "ay"
        end
      }.join(" ")
    end
end