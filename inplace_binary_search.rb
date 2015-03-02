def binary_search(array, search_value)
  i = array.length.to_f / 2 - 1
  return "not found" if search_value < array.first || search_value > array.last
  index_value = array.length.to_f / 4 + 0.5
  until search_value == array[i]
    return "not found" if index_value == 0
    if search_value > array[i]
      i += index_value
    else
      i -= index_value
    end
    index_value /= 2
  end
  return array[i]
end

n = 10
a = 0
array = (0..n).to_a

array.length.times do
  p binary_search(array, a)
  a += 1
end

#p binary_search(array, rand(0..50))