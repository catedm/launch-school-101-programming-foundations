# input: string
# output: hash with 3 entries
#     % of lowercase letters, % of uppercase letters, % of neither
# rules
#   string will always contain at least one character

# algorithm:
#   create new hash
#   use .count to count letters
#   divide by size of the string
#   * to turn into a percentage

def letter_percentages(str)
  percentages = {}
  percentages[:lowercase] = (str.count('a-z').to_f / str.size) * 100
  percentages[:uppercase] = (str.count('A-Z').to_f / str.size) * 100
  percentages[:neither] = (str.count('^A-Za-z').to_f / str.size) * 100
  percentages
end


p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
