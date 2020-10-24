# frozen_string_literal: true

m = 0
n = 2_147_483_647

# times out
def range_bitwise_and(m, n)
  (m..n).to_a.reduce do |result, number|
    result & number
  end
end

p range_bitwise_and(m, n)
