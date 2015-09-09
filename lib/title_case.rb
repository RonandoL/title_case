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
    end
    sentence_array.join(" ")
  end

end
