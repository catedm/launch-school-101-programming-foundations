CHAR_LIST = ['a', 'b', 'c', 'd', 'e', 'f', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def uuid

arr = [8, 4, 4, 4, 12]

uuid = ''
arr.each do |num|
    num.times { uuid << CHAR_LIST.sample }
    uuid += '-'
  end

  uuid[-1] = ''

  uuid
end

p uuid
