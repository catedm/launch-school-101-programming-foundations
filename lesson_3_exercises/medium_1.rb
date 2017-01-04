# Question 1
# Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in the days before computers had video screens).

# For this exercise, write a one-line program that creates the following output 10 times,
"The Flintstones Rock!"
# with the subsequent line indented 1 space to the right:

10.times { |number| puts (" " * number) + "The Flintstones Rock!" }


# Question 2
# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end


# Question 3
# The result of the following statement will be an error:

puts "the value of 40 + 2 is " + (40 + 2)

# Why is this and what are two possible ways to fix this?

puts "the value of 40 + 2 is " + (40 + 2).to_s


# Question 5
# Alan wrote the following method, which was intended to show all of the factors of the input number:

def factors(number)
  dividend = number
  divisors = []
  begin
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end until dividend == 0
  divisors
end

# Alyssa noticed that this will fail if the input is 0, or a negative number,
# and asked Alan to change the loop. How can you change the loop construct (instead of using begin/end/until) to make this work?
# Note that we're not looking to find the factors for 0 or negative numbers,
# but we just want to handle it gracefully instead of raising an exception or going into an infinite loop.

# my solution
def factors(number)
  dividend = number
  divisors = []
  while number > 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end


# Question 6
# Alyssa was asked to write an implementation of a rolling buffer.
# Elements are added to the rolling buffer and if the buffer becomes full,
# then new elements that are added will displace the oldest elements in the buffer.

# She wrote two implementations saying, "Take your pick.
# Do you like << or + for modifying the buffer?". #
# Is there a difference between the two, other than what operator she chose to use to add an element to the buffer?

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

# rolling_buffer1 will mutate the caller (<<)
# rolling_buffer2 will not (+)


# Question 7
# Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator,
# A user passes in two numbers, and the calculator will keep computing the
# sequence until some limit is reached.

# Ben coded up this implementation but complained that as soon as he ran it, he got an error.
# Something about the limit variable. What's wrong with the code?

limit = 15

def fib(first_num, second_num)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# How would you fix this so that it works?

# my solution
def fib(first_num, second_num)
  limit = 15
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# Question 8

# In another example we used some built-in string methods to change the case of a string.
# A notably missing method is something provided in Rails, but not in Ruby itself...titleize!
# This method in Ruby on Rails creates a string that has each word capitalized as it would
# be in a title. For example, the string:

words = "the flintstones rock"

#would be:

words = "The Flintstones Rock"

# Write your own version of the rails titleize implementation.

# my solution
str.split.each { |word| word.capitalize! }.join(' ')
# their solution
words.split.map { |word| word.capitalize }.join(' ')
