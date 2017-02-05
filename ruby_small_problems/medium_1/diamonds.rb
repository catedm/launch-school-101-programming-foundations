# input: 1 odd integer
# output: n x n grid

#    *
#   ***
#  *****
#   ***
#    *

def diamond(n)
  result = '*'
  count = 2

  loop do
    puts result.center(n)
    result += ('*' * count)
    break if result.size == (n + 2)
  end

  (n / 2.0).floor.downto(1) do |num|
    result = ('*' * (n - count))
    puts result.center(n)
    count += 2
  end

end

diamond(9)
