# frozen_string_literal: true

def my_binary_search(list, item)
  low = 0
  high = list.length - 1

  while low <= high
    mid = (low + high)
    guess = list[mid]
    if guess == item
      return "The position of the item is at #{mid + 1}"
    elsif guess > item
      high = mid - 1
    elsif guess < item
      low = mid + 1
    end
  end
  puts "#{item} is not present within the list"
end

# iterative implementation of binary search in Ruby

def binary_search(an_array, item)
  first = 0
  last = an_array.length - 1

  while first <= last
    i = (first + last) / 2

    if an_array[i] == item
      return "#{item} found at position #{i}"
    elsif an_array[i] > item
      last = i - 1
    elsif an_array[i] < item
      first = i + 1
    else
      return "#{item} not found in this array"
    end
  end
end

# recursive implementation of binary search in Ruby
def binary_search_recursive(an_array, item)
  first = 0
  last = an_array.length - 1

  if an_array.empty?
    return "#{item} was not found in the array"
  else
    i = (first + last) / 2
    if item == an_array[i]
      return "#{item} found"
    else
      if an_array[i] < item
        return binary_search_recursive(an_array[i + 1, last], item)
      else
        return binary_search_recursive(an_array[first, i - 1], item)
      end
    end
  end
end
