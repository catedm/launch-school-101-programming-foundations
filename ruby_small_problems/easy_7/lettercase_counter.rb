# initiate a new hash
# iterate through the string
# regex

def letter_case_count(str)
  new_hash = {}
  new_hash[:lowercase] = str.scan(/[a-z]/).size
  new_hash[:uppercase] = str.scan(/[A-Z]/).size
  new_hash[:neither] = str.scan(/[^A-Za-z]/).size
  new_hash
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
