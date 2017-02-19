require "pry"

# input: string
# output: boolean
# rules:
#   return true if all parentheses in the string are balanced
#   false otherwise
#   properly balanced means parentheses must occur in matching '(' and ')' pairs

# algorithm:
#   use a counter and loop (each_char) to keep track of paren count
#   count += 1 if char == '('
#   count -= 1 if char == ')'
#   break if count is ever < 0 return false
#   true

def balanced?(str)
  count = 0
  str.each_char do |char|
    count += 1 if char == '('
    count -= 1 if char == ')'
    break if count < 0
  end

  count.zero?
end


p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
