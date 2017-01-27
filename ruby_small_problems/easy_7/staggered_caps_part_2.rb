# INCOMPLETE

def staggered_case(str)
  str.downcase.chars.each_with_index do |char, index|
    next if char != /[a-z]/i
    char.upcase!
  end.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
