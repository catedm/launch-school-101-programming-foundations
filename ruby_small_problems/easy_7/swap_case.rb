def swapcase(str)
  new_str = str.chars
  new_str.map! do |letter|
    if letter =~ /[a-z]/
      letter.upcase
    elsif letter =~ /[A-Z]/
      letter.downcase
    else
      letter
    end
  end
  new_str.join('')
end


swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
