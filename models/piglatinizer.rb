class PigLatinizer
    def piglatinize(string)
        latinized_list = string.split.map do |word|
          parts_of_word = word.split(/([aeiouAEIOU])/, 2)
          if parts_of_word[0] == ""
             "#{word}way"
          else
            "#{parts_of_word[1]}#{parts_of_word[2]}#{parts_of_word[0]}ay"
          end
        end
        latinized_list.join(" ")
    end
end