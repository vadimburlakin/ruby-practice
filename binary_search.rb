class Array

  # assumes the array is sorted
  def binary_search(needle, start_idx = nil, end_idx = nil)
    return binary_search(needle, 0, size-1) if start_idx.nil? && end_idx.nil?

    return nil if start_idx > end_idx

    middle = start_idx + (end_idx - start_idx) / 2

    if needle < self[middle]
      return binary_search(needle, start_idx, middle - 1)
    elsif needle > self[middle]
      return binary_search(needle, middle + 1, end_idx)
    else
      return middle
    end
  end

end

p [1,2,3,4,5].binary_search(3)