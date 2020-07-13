class PigLatinizer
   attr_reader :words

  def initialize()
  end

  def piglatinize(words)
    words_array = words.split(" ")
    # binding.pry

    pig_latin_words = words_array.map do |word|

        if word.match(/^[aeiou]/i)
            word + "way"
        else
            first_vowel_index = word =~ /[aeiou]/i
            first_part = word.slice(0, first_vowel_index)
            rest_of_word = word.slice(first_vowel_index..)

            rest_of_word + first_part + "ay"
        end
    end

    result = pig_latin_words.join(" ")
    result
  end

end
