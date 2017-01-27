# input: 1 integer
# output: a number of strings == integer
# upto method

def triangle(num)
  1.upto(num) { |int| puts ('*' * int).rjust(num) }
end

triangle(5)
