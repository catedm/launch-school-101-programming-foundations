def xor?(value1, value2)
  (value1 && !value2) || (value2 && !value1)
end


p xor?(5.even?, 4.even?)
p xor?(5.odd?, 4.odd?)
p xor?(5.odd?, 4.even?)
p xor?(5.even?, 4.odd?)
