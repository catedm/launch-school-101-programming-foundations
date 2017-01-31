# input: 1 string
# output: integer

 def ascii_value(string)
   string.chars.map { |char| char.ord }.inject(:+)
 end
