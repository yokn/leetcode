# frozen_string_literal: true

class ListNode
  attr_accessor :val, :next
  def initialize(val, _next = nil)
    @val = val
    @next = _next
  end
end

require 'pry-byebug'

# e = ListNode.new(6)
d = ListNode.new(3)
c = ListNode.new(1, d)
b = ListNode.new(0, c)
node = ListNode.new(2, b)

def delete_node(node)
  node.val = node.next.val
  node.next = node.next.next
end
p delete_node(node)
