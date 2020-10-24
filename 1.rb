# frozen_string_literal: true

nums = [2, 5, 5, 11]

target = 10

def two_sum(nums, target)
  nums.each_with_index do |num1, oidx|
    nums.each_with_index do |num2, iidx|
      next if oidx == iidx
      next unless num1 + num2 == target

      return [oidx, iidx]
    end
  end
end

p two_sum(nums, target)
