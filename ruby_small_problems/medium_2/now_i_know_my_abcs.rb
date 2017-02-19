# input: string
# output: boolean
# rules:
#   data structure containing 2 letter blocks
#   input string can only use a block once
#   if input string uses a block twice return false
#   if input string uses blocks only one time, return true

# algorithm:
#   make an array with the blocks
#   use none? on array with string to detemine how many times
#   a block is used

require "pry"

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)

def block_word?(string)
  string = string.chars
  BLOCKS.none? do |block|
    string.count(block[0]) + string.count(block[1]) > 1
  end
end

p block_word?('BATCH') # == true
p block_word?('BUTCH') # == false
p block_word?('jest') # == true
