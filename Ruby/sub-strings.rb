dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(phrase, dictionary)

  # results hash
  results = {}

  # make phrase lowercase
  low_phrase = phrase.downcase

  # map through the dictionary
  dictionary.map do |word| 
    # does the phrase contain the current word from the dicionary?
    if low_phrase.include? word
      # if yes, scan the phrase and count how many times it appears
      results[word] = low_phrase.scan(word).count;
    end
  end

  puts results
  return results

end
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)