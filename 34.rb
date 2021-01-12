# frozen_string_literal: true

def search_range(nums, target)
  result = [-1, -1]
  nums.each_with_index do |num, index|
    next unless num == target

    result[0] = index if result[0] == -1
    result[1] = index
  end
  result
end
