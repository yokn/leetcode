# frozen_string_literal: true

class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end
# e = ListNode.new(5)
# d = ListNode.new(4, e)
# c = ListNode.new(3, d)
b = ListNode.new(2)
head = ListNode.new(1, b)

n = 1

def remove_nth_from_end(head, n)
  pointer = head
  count = 0
  while pointer
    count += 1
    pointer = pointer.next
  end

  target = count - n

  count = -1

  pointer = head
  until pointer.nil?
    return pointer if target.zero? && count.zero?

    count += 1

    if count == target - 1
      pointer.next = pointer.next.next
      return head
    end

    pointer = pointer.next
  end

  []
end
p remove_nth_from_end(head, n)
