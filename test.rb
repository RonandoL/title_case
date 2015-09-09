
  if word.include?("mc")
    word.split("")    # word with mc changed to an array
    word[3].capitalize!
    word.join
    
  end
