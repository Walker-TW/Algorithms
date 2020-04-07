def selection_sort(array)
  l = array.length
  (0...l).each do |i|
    min = i
    ((i + 1)...l).each do |j|
      next unless array[j] < array[min]

      temp = array[j]
      array[j] = array[min]
      array[min] = temp
    end
  end
  array
end
