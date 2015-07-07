puts "Enter text here: "
input = gets.chomp

words = input.split(" ")
frequencies = Hash.new(0)
words.each{|word| frequencies[word]+=1}
frequencies = frequencies.sort_by{|a,b| b}
frequencies.reverse!

frequencies.each do |word, frequency|
	puts "#{word}: #{frequency}"
end