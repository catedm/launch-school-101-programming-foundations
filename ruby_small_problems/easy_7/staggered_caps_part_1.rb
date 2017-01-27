def staggered_case(str)
  result = ''
  need_upper = true
  str.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
      need_upper = !need_upper
  end
  result
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
