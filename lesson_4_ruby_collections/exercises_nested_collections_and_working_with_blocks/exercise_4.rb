hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |key, values|
  values.each do |words|
    words.chars.each do |letter|
      puts letter if letter.match(/[aeiouAEIOU]/)
    end
  end
end
