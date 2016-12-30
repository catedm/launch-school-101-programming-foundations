# Question 1
# What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

 # => 1
 #    2
 #    2
 #    3


# Question 2
# Describe the difference between ! and ? in Ruby.
# And explain what would happen in the following scenarios:

# 1. what is != and where should you use it?
  # This is the 'is not equal to' operator.
  # This should be used in a while loop
# 2. put ! before something, like !user_name
  # This will return false
# 3. put ! after something, like words.uniq!
  # This is called the 'bang operator' and will mutate the caller
# 4. put ? before something
  #
# 5. put ? after something
  # used on methods like include?
  # looking for a boolean value
# 6. put !! before something, like !!user_name
  # Turns any object into their boolean equivalent


# Question 3
# Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!('important', 'urgent')


# Question 4
# The Ruby Array class has several methods for removing items from the array.
# Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1)

numbers = [1, 2, 3, 4, 5]
numbers.delete(1)


# Question 5
# Programmatically determine if 42 lies between 10 and 100.

(10..100).cover?(42)


# Question 6
# Starting with the string:

famous_words = "seven years ago..."

# show two different ways to put the expected "Four score and " in front of it.

"Four score and " + famous_words
famous_words.insert(0, "Four score and ")


# Question 7
# Fun with gsub:

def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep

# If we take advantage of Ruby's Kernel#eval
# method to have it execute this string as if it were a "recursive" method call

eval(how_deep)

# what will be the result?
# => 42


# Question 8
# If we build an array like this:

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

# We will end up with this "nested" array:

["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

# Make this into an un-nested array.

flintstones.flatten!


# Question 9
# Given the hash below

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# Turn this into an array containing only two elements:
# Barney's name and Barney's number

flintstones.assoc("Barney")

# Question 10
# Given the array below

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# Turn this array into a hash where the names are the keys
# and the values are the positions in the array.

flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end
