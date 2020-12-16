# frozen_string_literal: true

def find_median_sorted_arrays(nums1, nums2)
  arr = (nums1 + nums2).sort
  mid =  arr.length / 2
  mid2 = (arr.length - 1) / 2
  (arr[mid] + arr[mid2]) / 2.0
end
