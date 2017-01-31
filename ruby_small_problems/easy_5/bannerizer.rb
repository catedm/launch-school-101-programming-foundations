def print_in_box(str)
  puts "+ #{str.gsub(/./, '-')} +"
  puts "| #{str.gsub(/./, ' ')} |"
  puts "| #{str} |"
  puts "| #{str.gsub(/./, ' ')} |"
  puts "+ #{str.gsub(/./, '-')} +"
end



print_in_box('To boldly go where no one has gone before.')
print_in_box('')
