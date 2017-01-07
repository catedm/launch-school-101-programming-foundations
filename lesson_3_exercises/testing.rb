# - randomozation of hexadecimal characters
# - output will be a string
# - string will be broken into 5 sections of hexadecimal characters
# - 8-4-4-4-12
# - "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

def uuid
end

numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
letters = ['a', 'b', 'c', 'd', 'e', 'f']

first = (numbers.sample.to_s + letters.sample) * 4
first.split('').shuffle.join
p first

second = (numbers.sample.to_s + letters.sample) * 4
