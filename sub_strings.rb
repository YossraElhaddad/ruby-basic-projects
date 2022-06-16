def substrings(text, dictionary)
    text_array = text.split(' ')
    text_array.reduce(Hash.new(0)) do |result, word|
    dictionary.each do |lookup_word|
    if word.downcase.match?(lookup_word)
     result[lookup_word] +=1
    end
end
result
end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)