# input: number
# output: next featured number
# rules
# => featured number is odd
# => featured number is a multiple of 7
# => featured numbers digits occur exactly once each

# algorithm:
# => find next number that is evenly divisble by 7 from the starting number
# => step from 7 up from there inside a loop
# => check for a featured num every time
# => break and return featured num when one is found

def double_number?(num)
  num.to_s.split('').uniq.size < num.to_s.split('').size ? true : false
end

def featured(input)
  until input % 7 == 0
    input = input.next
  end

  loop do
    return input if input.odd? && input % 7 == 0 && double_number?(input) == false
    input += 7
  end

end

p featured(12) # == 21
p featured(20) # == 21
p featured(21) # == 35
p featured(997) # == 1029
p featured(1029) # == 1043
p featured(999_999_987) # == 1_023_456_987
