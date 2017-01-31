def oddities(arr)
  arr2 = []
  arr.each_with_index { |item, index| arr2 << item if index.even? }
  arr2
end

def evens(arr)
  arr2 = []
  arr.each_with_index { |item, index| arr2 << item if index.odd? }
  arr2
end



p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
