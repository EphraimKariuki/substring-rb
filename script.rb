def substring(word, dictionary)
  
    dictionary.reduce(Hash.new(0)) do |hash, substring|
      words_array = word.split("\s")
      words_array.each do |item|
         if item.include?(substring)
           hash[substring] += 1
         end
      end
      hash 
      
    end  
end


#Example usage:
word = "below"
dictionary = ["below","down","below","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substring(word, dictionary)

p substring("Howdy partner, sit down! How's it going?", dictionary)