# frozen_string_literal: true

def max_profit(prices)
  biggest = 0
  second = prices[0]
  prices.each do |price|
    first = price
    second = price < second ? price : second
    result = (first - second)
    if result > biggest
      biggest = result
      p "buying at #{second} selling at #{first}"
    end
  end
  p biggest
end

max_profit([7, 1, 5, 3, 6, 4])
max_profit([7, 6, 4, 3, 1])
max_profit([17, 3, 6, 9, 15, 8, 6, 1, 10])
