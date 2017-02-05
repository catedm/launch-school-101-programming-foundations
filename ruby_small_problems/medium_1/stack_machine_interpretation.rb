# STACK will be an array ([3, 4, 6])
# register value is separate from the STACK - initialize at 0
# all operations will be integer operations

DIGITS = {'1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6,
          '7' => 7, '8' => 8, '9' => 9, '0' => 0}

def integer_array(string)
  integer_array = string.split.map do |item|
    if item.size == 1
      item = DIGITS[item]
    else
      item
    end
  end
  integer_array
end

def minilang(string)
  command_order = integer_array(string)
  register = 0
  stack = []
  command_order.each do |command|
    case command
    when "PUSH" then stack << register
    when "ADD" then  register += stack.pop
    when "SUB" then  register -= stack.pop
    when "MULT" then register *= stack.pop
    when "DIV" then  register /= stack.pop
    when "MOD" then  register %= stack.pop
    when "POP" then  register = stack.pop
    when "PRINT" then puts register
    else              register = command
    end
  end
end

minilang('5 PUSH 3 MULT PRINT')
