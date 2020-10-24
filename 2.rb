# frozen_string_literal: true

l1 = [9, 9, 9, 9, 9, 9, 9]
l2 = [9, 9, 9, 9]

def add_two_numbers(l1, l2)
  until l1.nil?
    num1 += l1.val
    l1 = l1.next
  end
  until l2.nil?
    num2 += l2.val
    l2 = l2.next
  end
  # l1.each do |num|
  #   num1.unshift(num)
  # end
  # l2.each do |num|
  #   num2.unshift(num)
  # end
  (num1.to_s.reverse.to_i + num2.to_s.reverse.to_i).to_s.reverse.split('').map(&:to_i)
end

p add_two_numbers(l1, l2)
