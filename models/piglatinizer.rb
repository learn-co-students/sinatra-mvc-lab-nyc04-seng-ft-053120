class PigLatinizer

  def piglatinize(str)
    str.split(' ').map { |word| latinize_word(word) }.join(' ')
  end

  private
  def latinize_word(word)
    # if the word begins with a vowel sound, add sound of -way to end of the word
    vowels = "aeiouAEIOU"

    if vowels.include?(word[0])
      return word.concat('way')
    else 
      first_vowel_idx = nil
      word.each_char.with_index do |char, idx|
        if vowels.include?(char)
          first_vowel_idx = idx
          break
        end
      end
      return word[first_vowel_idx..-1] + word[0...first_vowel_idx] + 'ay'
    end
  end
end