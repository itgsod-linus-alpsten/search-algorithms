def binary_search(array, value)
  i = array.length / 2
  return array[i] if value == array[i]
  return "'#{value}' not found" if array.length < 2
  return binary_search(array[i+1..-1], value) if value > array[i]
  return binary_search(array[0...i], value)
end



list = [0,1,2,3,4,5,6,7,8,9]
list_string = %w(a b c d e f g)

p binary_search(list_string, gets.chomp)

#i = 0
#list.length.times do
#  p binary_search(list_string, i)
#  i += 1
#end