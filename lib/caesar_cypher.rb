def caesar_cypher(string, offset)
	letters = string.scan /./
	capital_letters = ("A".."Z").to_a
	lower_letters = ("a".."z").to_a
	encrypted_letters = []

	encrypted_letters = letters.collect do |letter|

		if capital_letters.include? letter
			capital_index = capital_letters.find_index letter
			size = capital_letters.size
			new_index = capital_index + offset
			if capital_index + offset > size 
				(new_index - (size * (new_index/capital_letters.size)) +65).chr 
			else (new_index+65).chr
			end

		elsif lower_letters.include? letter
			lcase_index = lower_letters.find_index letter
			size = lower_letters.size
			new_index = lcase_index + offset
			if	lcase_index + offset > size
			(new_index - (size * (new_index/lower_letters.size))+97).chr 
			else (new_index + 97).chr
			end
		else
			letter	
		end
	end
	encrypted_letters.join
end
