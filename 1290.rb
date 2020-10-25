# frozen_string_literal: true

def get_decimal_value(head)
  arr = []
  while head
    arr << head.val
    head = head.next
  end
  arr.join.to_i(2)
end
