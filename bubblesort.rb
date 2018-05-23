class Array

  def bubblesort
    loop do
      swapped = false
      (0..(size-2)).each do |i|
        if self[i] > self[i+1]
          self[i],self[i+1] = self[i+1],self[i]
          swapped = true
        end
      end
      break unless swapped
    end

    return self
  end

end

puts [4,3,2,5].bubblesort
