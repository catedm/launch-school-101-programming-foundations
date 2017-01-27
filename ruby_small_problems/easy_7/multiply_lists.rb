# input: 2 arrays of numbers
# output: 1 new array containing product of
# each pair of numbers that have the same index
require "pry"

def multiply_list(arr1, arr2)
  result = []
  count = 0
  loop do
    result << arr1[count] * arr2[count]
    count += 1
    break if result.size == ((arr1.size + arr2.size) / 2)
  end
  result
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

def with_zip(arr1, arr2)
  arr1.zip(arr2).map { |array| array.inject(:*) }
end

p with_zip([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
