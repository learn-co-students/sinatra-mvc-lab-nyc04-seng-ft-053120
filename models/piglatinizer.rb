class PigLatinizer
    attr_reader :text
    def initialize
      @text = text
    end
    def string_into_array(text)
      text.split(" ")
    end
    def vowel?(word)
      word.match(/[aAeEiIoOuU]/)
    end
    def piglatinize(text)
      #binding.pry
      converterted_arr = []
      string_into_array(text).each do |word|
        if vowel?(word[0])
          converterted_arr << word + "way"
        else
          vowel_index = word.index(/[aAeEiIoOuU]/)
          word_consonant = word.slice(0...vowel_index)
          word_remains = word.slice(vowel_index..word.length)
          converterted_arr << word_remains + word_consonant + "ay"
        end
      end
      converterted_arr.join(" ")
    end
  end