# input: 1 string
# output: 1 new string
# str.downcase
# letter.upcase if index.even?

def staggered_case(str)
  str.downcase.chars.each_with_index do |char, index|
    char.upcase! if index.even?
  end.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
