def substrings(string, dictionary)
  word_hash = {}
  words_of_string = string.downcase.split(" ")
  dictionary.each do |dict_word|
    next unless string.downcase.include?dict_word
    count = 0
    words_of_string.each {|word| count += 1 if word.include?dict_word}
    word_hash[dict_word] = count
  end
  word_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts(substrings("Howdy partner, sit down! How's it going?", dictionary))