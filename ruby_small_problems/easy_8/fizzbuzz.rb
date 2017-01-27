# method takes 2 arguments: starting number and ending number
# prints all numbers between the 2 numbers
# replace numbers divisible by 3 with 'Fizz'
# replace numbers divisible by 5 with 'Buzz'
# replace numbers divisible by 3 & 5 with 'FizzBuzz'

def fizzbuzz(start, finish)
  result = []
  start.upto(finish) do |num|
    if num % 3 == 0 && num % 5 == 0
      result << "FizzBuzz"
    elsif num % 5 == 0
      result << "Buzz"
    elsif num % 3 == 0
      result << "Fizz"
    else
      result << num
    end
  end
  puts result.join(', ')
end

fizzbuzz(1, 15)
