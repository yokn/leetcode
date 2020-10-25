# frozen_string_literal: true

def remove_elements(head, val)
  copy = head
  while head
    return [] if (head.val == val) && head.next.nil?

    head&.next = head&.next&.val == val ? head&.next&.next : head&.next
    head = head&.next
  end
  copy
end
