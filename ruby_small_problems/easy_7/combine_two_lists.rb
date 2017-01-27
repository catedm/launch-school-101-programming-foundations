def interleave(arr1, arr2)
  new_array = []
  index = 0

  loop do
    new_array << arr1[index]
    arr1.shift

    new_array << arr2[index]
    arr2.shift

    break if arr1.size + arr2.size == 0
  end

  new_array
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
