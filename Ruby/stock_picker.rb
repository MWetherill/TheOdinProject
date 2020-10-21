def stock_picker(stock_prices)

  #determine all the combinations of 2 different array items from stock_prices
  stock_prices_combos = stock_prices.combination(2).to_a
  
  #compare the two values in the combinations array, store values in a new hash - key = the combination of days, value = the profit margin
  compared_h = {}

  stock_prices_combos.each do |compare|
    compared_h[compare] = compare[1] - compare[0]
  end

  #sort compared prices hash by value from highest to lowest into a new hash
  sorted_compared_h = compared_h.sort_by{|k, v| -v}

  #return the first item in the sorted compared hash - this gives both the day array and the profit
  return sorted_compared_h[0]
end

p stock_picker([17,3,6,9,15,8,6,1,10])