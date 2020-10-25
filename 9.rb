# frozen_string_literal: true

def is_palindrome(x)
  s = x.to_s
  s.reverse == s
end
