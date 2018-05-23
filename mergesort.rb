class Array

  # returns a new array
  def mergesort
    ms_sort(self)
  end

  private

  def ms_sort(arr)
    return arr if arr.size < 2
    middle = arr.size / 2
    return ms_merge(ms_sort(arr[0..middle-1]), ms_sort(arr[(middle)..(arr.size-1)]))
  end

  def ms_merge(left, right)
    result = []
    l_idx = 0
    r_idx = 0
    while l_idx < left.size || r_idx < right.size do
      case true
      when r_idx == right.size
        result.push left[l_idx]
        l_idx += 1
      when l_idx == left.size
        result.push right[r_idx]
        r_idx += 1
      when left[l_idx] > right[r_idx]
        result.push right[r_idx]
        r_idx += 1
      when left[l_idx] < right[r_idx]
        result.push left[l_idx]
        l_idx += 1
      end
    end
    return result
  end

end

puts [4,3,2,5].mergesort