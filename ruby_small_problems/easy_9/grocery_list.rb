# input: a nested array
# output: an array with correct number of each fruit

def buy_fruit(list)
  list.each_with_object([]) do |sub_array, new_array|
    sub_array[1].times { new_array << sub_array[0] }
  end
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
