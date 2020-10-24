# frozen_string_literal: true

class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end
e = ListNode.new(5)
d = ListNode.new(4, e)
c = ListNode.new(3, d)
b = ListNode.new(2, c)
head = ListNode.new(1, b)

def reverse_list(head)
  prev = nil
  while head
    prev = ListNode.new(head.val, prev)
    head = head.next
  end
  prev
end
p reverse_list(head)
