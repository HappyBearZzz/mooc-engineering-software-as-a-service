# Define a method sum which takes an array of integers as an argument and returns the sum of its elements. For an empty array it should return zero. 

def sum(array_int)
  array_int.inject(0) {|sum, num| sum + num}
end


# Define a method max_2_sum which takes an array of integers as an argument and returns the sum of its two largest elements. For an empty array it should return zero. For an array with just one element, it should return that element. 

def max_2_sum(array_int)
  if array_int.size == 0
    return 0
  end
  
  if array_int.size == 1
	return array_int[0]
  end
  
  first_max = array_int.max
  array_int.delete_at(array_int.index(first_max))
  second_max = array_int.max
  return first_max + second_max
  
end


# Define a method sum_to_n? which takes an array of integers and an additional integer, n, as arguments and returns true if any two distinct elements in the array of integers sum to n. An empty array or single element array should both return false. 

def sum_to_n?(array_int, n)
  if (array_int.size == 0)
    return false
  end
  
  i = 0
  until i == (array_int.size - 1)
    if (array_int[i] + array_int[i+1]) == n
      return true
    end
	i += 1
  end
  return false
end