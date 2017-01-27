# input: 1 string
# output: 1 string

def penultimate(string)
  string.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

# FURTHER EXPLORATION

def penultimate2(string)
  return string if string.empty?

  arr = string.split
  if arr.size.even?
    arr[-2]
  elsif arr.size.odd?
    arr[(arr.size - 1) - (arr.size / 2)]
  else
    string
  end
end

p penultimate2('Launch School is super great test test!') == 'super'
p penultimate2('') == ''
