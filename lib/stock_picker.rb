def stock_picker(prices)	
#creates a new array to manipulate
new = prices

#accounts for min values at the end of the array by removing these
while new.size > 0 && new.min == new.last
 new.pop
end

#if prices array has decreasing values, recommendation is nil
if new.size == 0
	selection = [nil,nil]
#otherwise it picks the index of the min and max	
else	
	min_price = new.min
	min_price_index = new.find_index(new.min)
	max_options = new.drop(min_price_index + 1)
	max_price_index = max_options.find_index(max_options.max) + min_price_index + 1
	selection = [min_price_index, max_price_index]
end

selection

end