class PigLatinizer
    attr_accessor :text

    def initialize
        @text=text
    end

    def piglatinize(text)
        new_arr=text.split
        ans_arr=[]
        new_arr.each do |word|
            if %w(a e i o u A E I O U).include?(word[0])
                ans_arr<<word+"way"
            else
                count=0
                vowel_index=1
                while count<word.length
                    if %w(a e i o u).include?(word[count])
                        vowel_index=count
                        break
                    end
                    count+=1
                end
               ans_arr<< word[vowel_index..word.length] + word[0..vowel_index-1] + "ay"
            end
        end
       ans_arr.join(" ")
    end

end