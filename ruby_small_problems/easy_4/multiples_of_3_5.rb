def multisum(num)
  sum = 0
  1.upto(num) do |num|
    if num % 3 == 0 || num % 5 == 0
      sum += num
    end
  end
  sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
