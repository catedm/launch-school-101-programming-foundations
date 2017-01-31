# input: 1 string
# output: boolean
# true if all alphabetic characters inside the string are uppercase
# false otherwise
# ignore not alphabetic

def uppercase?(string)
  string == string.upcase
end

p uppercase?('t')
p uppercase?('T')
p uppercase?('Four Score')
p uppercase?('FOUR SCORE')
p uppercase?('4SCORE!')
p uppercase?('')
