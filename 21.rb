# frozen_string_literal: true

def merge_two_lists(*lists)
  arr = []
  lists.each do |list|
    while list
      arr << list.val
      list = list.next
    end
  end
  head = nil
  arr.sort.reverse.each do |num|
    head = ListNode.new(num, head)
  end
  head
end
