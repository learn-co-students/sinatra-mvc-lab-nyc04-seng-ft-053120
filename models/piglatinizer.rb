class PigLatinizer
  def piglatinize(phrase)
    phrase_arr = phrase.split(" ")
    latinized_arr = phrase_arr.map do |word|
                      transform_word(word)
                    end
    latinized_arr.join(" ")
  end

  private

  def vowel?(char)
    char.match(/[aeiou]/i)
  end

  def transform_word(word)
    if vowel?(word[0])
      word + "way"
    else
      first_vowel_idx = word.index(/[aeiou]/i)
      consonants = word.slice(0..first_vowel_idx-1)
      word_splice = word.slice(first_vowel_idx..word.length)
      word_splice + consonants + "ay"
    end
  end
end