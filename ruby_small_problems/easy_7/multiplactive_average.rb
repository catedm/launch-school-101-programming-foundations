# input: 1 array of integers
# use inject to multiply them together
# use array.size to divide them
# output: float rounded to 3 decimals


def show_multiplicative_average(arr)
  average = arr.inject(:*) / arr.size.round(3)
  puts format('%.3f', average)
end

show_multiplicative_average([2, 5, 7, 11, 13, 17])
