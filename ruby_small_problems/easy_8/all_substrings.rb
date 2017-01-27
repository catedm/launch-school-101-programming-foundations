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

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
