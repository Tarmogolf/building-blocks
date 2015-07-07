def stock_picker(array)
	while(array.min == array.last)
		array = array[0..-2]
	end

	buy = array.min
	buy_index = array.index(buy)

	sell = array[buy_index..-1].max
	sell_index = array[buy..-1].index(sell) + array[0...buy].size

	buy_sell = [buy_index, sell_index]
end

puts stock_picker([18,9,4,3,8,5,12,1,2])