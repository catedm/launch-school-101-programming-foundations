def multiply(numbers, criteria)
  new_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    new_numbers << current_number *= criteria

    counter += 1
  end

  new_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 12)
