def prompt(msg)
  puts "==> #{msg}"
end

arr = []

prompt "Enter the 1st number:"
arr << gets.chomp.to_i

prompt "Enter the 2nd number:"
arr << gets.chomp.to_i

prompt "Enter the 3rd number:"
arr << gets.chomp.to_i

prompt "Enter the 4th number:"
arr << gets.chomp.to_i

prompt "Enter the 5th number:"
arr << gets.chomp.to_i

prompt "Enter the last number:"
last_number = gets.chomp.to_i

if arr.include?(last_number)
  puts "The number #{last_number} appears in #{arr}."
else
  puts "The number #{last_number} does not appear in #{arr}."
end
