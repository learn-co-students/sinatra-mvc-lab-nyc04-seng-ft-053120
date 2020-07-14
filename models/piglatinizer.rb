require 'pry'
class PigLatinizer

  attr_accessor :string

  def initialize
    @string = string
  end

  def piglatinize(string)
    # binding.pry
    string_array = string.split(" ")
    pig = string_array.map { |word| 
      letter_arr = word.split('')
      if word.start_with?(/[bBcCdDfFgGhHjJkKlLmMnNpPqQrRsStTvVwWxXyYzZ]/)
        # binding.pry
        until "aAeEiIoOuU".include?(letter_arr[0])
          letter_arr << letter_arr[0]
          letter_arr.shift
        end
        letter_arr << "ay"
        letter_arr.join
      elsif word.start_with?(/[aAeEoOuUiI]/)
        letter_arr << "way"
        letter_arr.join
      end
      word = letter_arr
    }
    # binding.pry
    pig = pig.map { |word| word.join }.join(" ")
    pig 
  end

end