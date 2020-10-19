dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)
  normalized_words = word.downcase.split
  matches = Hash.new

  normalized_words.each do |part|
    dictionary.each do |entry| 
      if (part.include?(entry))
        if matches.has_key?(entry)
          matches[entry] += 1
        else
          matches.store(entry, 1)
        end  
      end
    end
  end

  return matches

end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
