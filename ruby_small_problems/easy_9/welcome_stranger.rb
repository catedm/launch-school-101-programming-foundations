# 2 arguments: 1 array, 1 hash
# array will contain 2 or more elements that when combined make up someone's name
# hash contains 2 keys: title and occupation with values
# return a greeting using full name and title

def greetings(arr, hash)
  puts "Hello #{arr.join(' ')}!" \
  " Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
