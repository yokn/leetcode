# frozen_string_literal: true

x = -120

def reverse(x)
  result = x.negative? ? -x.to_s.reverse.to_i : x.to_s.reverse.to_i
  result.abs <= 2**31 - 1 ? result : 0
end

p reverse(x)
