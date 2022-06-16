def stock_picker(prices)
    result = []
    max_price = prices.find_index(prices.max) == 0 ? prices.max(2)[1] : prices.max
    min_price = prices[0..prices.find_index(max_price)].min
    result << prices.find_index(min_price) << prices.find_index(max_price)
end

prices_of_the_week = [55,7,10,9,15,8,6,17,10]
p stock_picker(prices_of_the_week)  