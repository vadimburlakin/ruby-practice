class Array

  def quicksort(left = nil, right = nil)
    if left.nil? && right.nil?
      return quicksort 0, size-1
    elsif left < right
      # choose right value as a pivot
      # TODO median of three
      pivot = qs_partition(left, right, right)
      quicksort left, pivot - 1
      quicksort pivot + 1, right
    end
    return self
  end

  private

  def qs_partition(left, right, pivot)
    pivot_value = self[pivot]

    self[right],self[pivot] = self[pivot],self[right]

    new_pivot = left

    (left..(right-1)).each do |i|
      if self[i] < pivot_value
        self[new_pivot],self[i] = self[i],self[new_pivot]
        new_pivot += 1
      end
    end

    self[new_pivot],self[right] = self[right],self[new_pivot]

    return new_pivot
  end

end

puts [4,3,2,5].quicksort