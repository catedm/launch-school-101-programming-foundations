puts "Please write word or multiple words:"
phrase = gets.chomp

puts "There are #{phrase.delete(' ').length} characters in '#{phrase}'."
