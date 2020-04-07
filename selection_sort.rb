def selection_sort(array)
  l = array.length
  (0...l).each do |i|
    min = i
    ((i + 1)...l).each do |j|
      # do this to the next item unless the array index is at the minimum
      # in which case cancel and return the entire array.
      next unless array[j] < array[min]

      temp = array[j]
      # if the below line is not here then it will simply override the previous pointer
      # this is because you need a tempory memory address to place it to refind it check CS50 notes
      array[j] = array[min]
      array[min] = temp
    end
  end
  array
end
