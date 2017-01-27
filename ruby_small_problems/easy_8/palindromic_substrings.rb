# input: 1 string
# output: an array containing only the palindromic substrings in the input
# write a palindromic method to use inside the main method
# output array should be ordered in accordance with when they appear in the input
# duplicate palindromes should be included mupltiple times
# use substrings method from previous exercise
# palindrome method must be case / character sensitive

def substrings_at_start(string)
  result = []
  1.upto(string.size) do |index|
    result << string.slice(0, index)
  end
  result
end

def substrings(string)
  result = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    result.concat(substrings_at_start(this_substring))
  end
  result
end

def palindromes(string)
  all_substrings = substrings(string)
  result = []
  all_substrings.each do |substring|
    result << substring if palindrome?(substring)
  end
  result
end

def palindrome?(string)
  string == string.reverse && string.size > 1
end

p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
