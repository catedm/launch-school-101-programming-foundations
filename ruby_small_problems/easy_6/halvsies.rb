# input: 1 array
# output: 2 arrays containing the first half and second half of the input array
# if input array is odd, middle element should be in the first half

def halvsies(arr)
  first_half = arr.slice(0, (arr.size / 2.0).ceil)
  second_half = arr.slice(first_half.size, arr.size - first_half.size)
  [first_half, second_half]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
