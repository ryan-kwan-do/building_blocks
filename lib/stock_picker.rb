def stock_picker(prices)
	
low_price = prices.find_index(prices.min)
high_price = prices.find_index(prices.max)

selection = [low_price, high_price]
selection
end