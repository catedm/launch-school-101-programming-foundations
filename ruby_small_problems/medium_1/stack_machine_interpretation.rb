# STACK will be an array ([3, 4, 6])
# register value is separate from the STACK - initialize at 0
# all operations will be integer operations

def minilang(string)
  register = 0
  stack = []
  string.split.each do |command|
    case command
    when "PUSH" then stack << register
    when "ADD" then  register += stack.pop
    when "SUB" then  register -= stack.pop
    when "MULT" then register *= stack.pop
    when "DIV" then  register /= stack.pop
    when "MOD" then  register %= stack.pop
    when "POP" then  register = stack.pop
    when "PRINT" then puts register
    else              register = command.to_i
    end
  end
end

minilang('5 PUSH 3 MULT PRINT')
