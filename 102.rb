# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer[][]}
# frozen_string_literal: true

# incomplete
def level_order(root)
  queue = [root]

  result = []
  direction = []
  until queue.empty?

    p result
    p queue
    p direction
    pointer = queue.shift
    result << pointer.val if pointer.val

    if pointer.left
      queue << pointer.left
      direction << 'l'
    end
    if pointer.right
      queue << pointer.right
      direction << 'r'
    end
  end
  result[0] = [result[0]]
  direction.each_with_index do |d, index|
    if d == 'l'
      result[index + 1] = [result[index + 1], result[index + 2]]
      result[index + 2] = nil
    else
      result[index + 1] = [result[index + 1]]
    end
  end
  p result
  result.reject do |x|
    p x
    x == [nil]
  end
rescue StandardError
  []
end
