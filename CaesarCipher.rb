def caesar_shift(string, shift_delta=0)
	output = ""

	string.each_char do |char|
		if(letter?(char))
			output << letter_shift(char, shift_delta)
		else
			output << char
		end

	end

	puts output
end

def letter?(test)
	test =~ /[A-Za-z]/
end

def letter_shift(char, shift_delta)

	if(char.ord >= "a".ord)
		new_char = "a".ord + ((char.ord - "a".ord + shift_delta) % 26)
	else
		new_char = "A".ord + ((char.ord - "A".ord + shift_delta) % 26)
	end

	return new_char.chr
end

caesar_shift("What a string!", 5)
