require "substrings"

=begin
Your Task

#Implement a method #substrings that takes a word as the first argument 
and then an array of valid substrings (your dictionary) as the second argument. 
It should return a hash listing each substring (case insensitive)
that was found in the original string and how many times it was found.
=end

 describe "substrings"
 	context "Given one word and an array of substrings as arguments" do 
 		it "Creates a hash with each substring in the dictionary with count" do
 		expect(substrings("below",dictionary)).to eql({"below"=>1, "low"=>1})
 	end		
 	end

 	context "Is case insensitive" do 
 		it "Finds a sub string regardless of case" do
 			expect()
 		end
 	end
 	context "Given multiple words in a string" do
 		it "searches for all of the words" do
 			expect()
 		end
 	end
 end