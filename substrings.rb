def substrings (string, dictionary)
    frequency = Hash.new(0)
    string = string.split(" ")
    dictionary.each do |word|
        string.each do |str|
            if str.include? word
                frequency[word] += 1
            end
        end
    end
    return frequency
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit",
    "below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below the big horn in the partner", dictionary)