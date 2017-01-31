def sequence(end_num)
  arr = []
  1.upto(end_num) {|num| arr << num}
  arr
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
