DIGIT_LIST = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(str)
  digits = str.chars.map { |char| DIGIT_LIST[char] }

  value = 0
  digits.each { |digits| value = 10 * value + digits }
  value
end


p string_to_integer('4321')
