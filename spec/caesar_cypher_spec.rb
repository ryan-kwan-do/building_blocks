
require "caesar_cypher"

describe "caesar_cypher" do 
	context "an all lowercase string without going over z" do
		it "returns a string with a number on the end" do
			expect(caesar_cypher("fish",5)).to eql("knxm")
		end
	end
	
	context	"A string with capital letters" do
		it "returns the coded message with capital letters" do
			expect(caesar_cypher("Fish", 5)).to eql("Knxm")
		end
	end

	context "A string with numbers" do
		it "Returns the original number" do
			expect(caesar_cypher("There are 5 fish", 5)).to eql("Ymjwj fwj 5 knxm")
		end
	end
	context "A string with punctuation" do
		it "Keeps original punctuation" do
			expect(caesar_cypher("There! are 5 fish!",5 )).to eql("Ymjwj! fwj 5 knxm!")
		end
	end

	context "Can handle a big offset" do
		it "Returns normal encryption string" do
			expect(caesar_cypher("There are 5 fish",102)).to be_a_kind_of(String)
		end
	end
end