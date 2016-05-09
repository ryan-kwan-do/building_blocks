def substrings(word, dictionary)

def substrings(word, dictionary)

words = word.downcase.split
unique_words = words.uniq
output = {}

words.each do |x|
	output[x] = words.count(x)
end	

output

end	

dictionary = ["hello","below","down","go","going","horn","how",
			"howdy","it","i","low","own","part","partner","sit"]



end