# frozen_string_literal: true

def hasCycle(head)
  seen = []
  while head
    return true if seen.include?(head)

    seen << head
    head = head.next
  end
  false
end
