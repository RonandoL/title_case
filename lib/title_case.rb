class String
  define_method(:title_case) do
    sentence_array = self.downcase.split
    no_caps = ["a", "an", "the", "at", "by", "and", "as", "but", "or", "for", "in", "nor", "on", "at", "up", "to", "on", "of", "from", "by"]

    sentence_array.each do |word|
      if no_caps.include?(word)
        word
      else
        word.capitalize!
      end
      sentence_array.first.capitalize!

      #  Manage special words
      if (word.include?("mc"))
        letter_array = word.split!("")    # word with mc changed to an array of letters
          if (letter_array[0] == "m") && (letter_array[1] == "c")  # 1st & 2nd letters
            letter_array[2].capitalize!
            word = letter_array.join
          end
      end
    end
    sentence_array.join(" ")
  end

end
