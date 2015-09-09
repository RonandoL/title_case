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
          if (word.start_with?("Mc")) || (word.start_with?("O'"))
            # condensed from: word[0, 1] == "Mc"
            # condensed from: (word[0] == "M") && (word[1] == "c")
            word[2] = word[2].upcase
          end
    end
    sentence_array.join(" ")
  end

end

# there is no split! method
