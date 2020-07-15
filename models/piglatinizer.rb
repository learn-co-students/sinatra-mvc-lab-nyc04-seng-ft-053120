class PigLatinizer
    attr_reader :word
    def piglatinize(words)
        
        self.transformed(words)
    
    end
    def is_a_vowel?(letter)
        "aeiou".include?(letter)
    end

    def transformed(words)
        split_word=words.split(" ")
        
        platin=split_word.map do |word|
            word_array=word.split("")
            first_letter=word_array.first.downcase
            if(is_a_vowel?(first_letter))
                word_array<<"way"
            else
                the_index=0
                word_array.each_with_index{|letter,index| 
                    if(is_a_vowel?(letter))
                        the_index=index
                        break
                    end
                }
                removed_letters=word_array.shift(the_index)
                word_array<<removed_letters
                word_array<<"ay"
                word_array=word_array.flatten
            end
            word_array.join("")
        end
        platin.join(" ")
    end

end