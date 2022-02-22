dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
string = "Howdy partner, sit down! How's it going?"

def substrings(string, dictionary)
    hash = Hash.new

    # get a lowercase array of all the words in the original string
    split_string = string.downcase.split(" ")

    # for loop for the each word in the dictionary, we'll see if that word is included in every split word inside the original string
    dictionary.each do |substring|
        # counter for how many times the word is present
        counter = 0
        split_string.each do |split_word|
            if split_word.include?(substring)
                counter += 1
            end
        end
        # update the hash with substring word and how many times it was counted (if it was counted more than once)
        if counter > 0
            hash[substring] = counter
        end
    end

    print "this is the split_string \n #{split_string}"
    print "\n this is the final hash \n #{hash}"

end

substrings(string, dictionary)