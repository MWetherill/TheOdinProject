def stock_picker(stock_prices)

  # determine all the combinations of 2 different array items from stock_prices
  stock_prices_combos = stock_prices.combination(2).to_a
  
  # compare the two values in the combinations array, store values in a new hash - key = the combination of days, value = the profit margin
  compared_h = {}

  stock_prices_combos.each do |compare|
    compared_h[compare] = compare[1] - compare[0]
  end

  # sort compared prices hash by value from highest to lowest into a new hash
  sorted_compared_h = compared_h.sort_by{|k, v| -v}

  # take the key from the first hash item - this gives just the array
  days_arr = sorted_compared_h[0][0]

  # find the first instance of the stock prices array where the stock price matched the optimal buy price from the days array
  buy_day = stock_prices.find_index(days_arr[0])

  # slice the stock prices array from the optimal buy day and the final array item
  sliced_stock_prices = stock_prices.slice(buy_day, stock_prices.length - 1)
  
  # sort through the sliced stick prices array to find the first instance of the optimal sell day, add the buy day position to calculate position within original array
  sell_day = sliced_stock_prices.find_index(days_arr[1]) + buy_day

  return [buy_day, sell_day]

end

p stock_picker([17,3,6,9,15,8,6,1,10])