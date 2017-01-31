def cleanup(string)
  string.gsub!(/[\W]/, ' ').squeeze(' ')
end


p cleanup("---what's my +*& line?") == ' what s my line '
