# frozen_string_literal: true

s = 'ab'
t = 'aba'

# s = 'abcd'
# t = 'abcde'

# s = ''
# t = 'y'

# s = 'ae'
# t = 'aea'

def find_the_difference(s, t)
  # tarr = t.split('')
  # sarr = s.split('')
  # (tarr - sarr)

  # t.size.times do |index|
  #   next if t[index] == s[index]

  #   return t[index]
  # end

  thash = t.split('').each_with_object(Hash.new(0)) { |count, str| str[count] += 1 }
  shash = s.split('').each_with_object(Hash.new(0)) { |count, str| str[count] += 1 }
  (thash.to_a - shash.to_a)[0][0]
end

p find_the_difference(s, t)
