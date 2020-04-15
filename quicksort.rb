# This does not work as i need to translate lines of python
# into ruby code and I cannot understand what is different
# if you badly need any solution thier are a lot online

def quicksort(array)
  if array.length < 2
    array
  else
    pivot = array[0]
    # this is the python code to translate
    # less = [i for i in array[1: if i <= pivot]
    if i <= pivot 
      array.each { |i| 
      less = i 
      }
    end
    # this is python code to translate
    # greater = [i for i in array[1:] if i > pivot]
    if i > pivot 
      array.each { |i| 
      greater = i 
      }
    end
    quicksort(less) + [pivot] + quicksort(greater)
  end
end


quicksort([7,14,3,4,3])