require 'pry'

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end


def rotate_rightmost_digits(digit, criteria)
  arr = digit.to_s.chars
  sub_arr = rotate_array(arr[-criteria..-1])
  (arr[0..(-criteria - 1)] + sub_arr).join.to_i
end


def max_rotation(number)
  result = []
  digit_arr = number.to_s.chars

  loop do
    new_arr = rotate_array(digit_arr)
    result << new_arr[0]
    new_arr.shift
    digit_arr = new_arr
    break if new_arr.size == 0
  end

  result.join.to_i
end




p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
