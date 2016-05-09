require "stock_picker"

=begin
Instructions: http://www.theodinproject.com/ruby-programming/building-blocks	
Implement a method #stock_picker that takes in an array of stock prices, 
one for each hypothetical day. It should return a pair of days representing 
the best day to buy and the best day to sell. 
Days start at 0.
My notes and interpretations:
- The best days are those that result in the highest profit
- Given falling prices, program should recommend not buying
=end

describe "stock_picker"   do
	context "Minimum price is before the maximum price" do
		it "Returns the index of the min day and index of the max day" do
			expect(stock_picker([1,20,5,2,3,4,7])).to eql([0,1])
		end
	end

	context "Minimum comes after the maximum price" do
		it "Returns the next pair that returns a the highest profit" do
			expect(stock_picker([20,1,5,2,3,4,7])).to eql([1,6])
		end
	end

	context "The minimum price falls on the last day" do
		it "Returns the minimum before that day and the max after that min" do
			expect(stock_picker([20,5,2,3,4,7,1])).to eql([2,5])
		end
	end

	context "Prices fall every day" do
		it "Returns nil values for each day" do
			expect(stock_picker([6,5,4,3,2,1,0])).to eql([nil,nil])
		end
	end

end

