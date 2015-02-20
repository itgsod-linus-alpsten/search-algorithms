def binary_search(array, value)
  i = array.length / 2
  return array[i] if value == array[i]
  return "'#{value}' not found" if value.class != Fixnum && value.class != Float || array.length < 2
  return binary_search(array[i..-1], value) if value > array[i]
  return binary_search(array[0...i], value)
end

tests = "gets"
n = 100
list = (0..n).to_a
list.delete(50)

if tests == "all"
  list.length.times do
    p binary_search(list, n)
    n -= 1
  end
elsif tests == "gets"
  p binary_search(list, gets.to_i)
end