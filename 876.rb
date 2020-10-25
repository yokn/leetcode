# frozen_string_literal: true

def middle_node(head)
  copy = head
  count = 0
  count2 = 0

  while head
    count += 1
    head = head.next
  end

  while count2 < (count / 2)
    count2 += 1
    copy = copy.next
  end
  copy
end
