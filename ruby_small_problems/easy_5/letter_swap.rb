# input: string of words
# output: string in which all words first
# and last letters have been swapped

def swap(string)
  string.split.map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end.join(' ')
end

p swap('Oh what a wonderful day it is')
