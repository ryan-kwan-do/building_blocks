require "stock_picker"

=begin
Instructions: http://www.theodinproject.com/ruby-programming/building-blocks	
Implement a method #stock_picker that takes in an array of stock prices, 
one for each hypothetical day. It should return a pair of days representing 
the best day to buy and the best day to sell. 
Days start at 0.
My own addition:
 - The program always buys and sells, even when the minimum is on the last day
=end

describe "stock_picker"   do
	context "Minimum price is before the maximum price" do
		it "Returns the index of the min day and index of the max day" do
			expects(stock_picker([1,20,5,2,3,4,7])).to eql([0,1])
		end
	end

	context "Minimum comes after the maximum price" do
		it "Returns the index of the min day, 
			and the index of the next max day" do
			expects(stock_picker([20,1,5,2,3,4,7])).to eql([1,6])
		end
	end

	context "The minimum price falls on the last day" do
		it "Chooses the min before the last day, and the max after that min" do
			expects(stock_picker([20,5,2,3,4,7,1])).to eql([2,5])
		end
	end

end

