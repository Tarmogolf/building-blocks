dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (word_list, dictionary)
	test_list = word_list.downcase

	substrings_found = {}

	for i in dictionary
		num_found= test_list.scan(/#{i}/m).size
		if(num_found > 0)
			substrings_found[i] = num_found
		end
	end

	return substrings_found
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)