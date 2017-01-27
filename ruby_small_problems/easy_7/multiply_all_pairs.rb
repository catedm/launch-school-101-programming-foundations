# input: 2 arrays each containing a list of numbers
# output: 1 new array, with products of every pair
# of numbers that can occur in the input arrays
# sort result by increasing value

def multiply_all_pairs(arr1, arr2)
  result = arr1.product(arr2).map { |each_array| each_array.inject(:*) }.sort
  result
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
