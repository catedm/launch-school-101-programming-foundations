DIGITS = {'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5', 'six' => '6',
'seven' => '7', 'eight' => '8', 'nine' => '9', 'zero' => '0'}.freeze

def word_to_digit(words)
  DIGITS.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGITS[word])
  end
  words
end


p word_to_digit('Please call me at five five five one two three four. Thanks.')
