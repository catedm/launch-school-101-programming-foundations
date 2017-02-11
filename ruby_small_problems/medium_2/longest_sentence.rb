
# prints the longest sentence in the file based on number of words
# rules:
# => sentences may end in either '.' '!' or '?'
# => any sequence of characters that are not spaces or sentence ending chars are words
# => also print the number of words in the longest sentence

# algorithm:
# => pass in the text file to read (look at files chapter)
# => use regex to split the file into sentence ending chars
# =>

text = File.read("text_file.txt")
sentence_array = text.split(/\.|\?|\!/)
longest_sentence = sentence_array.max_by { |sentence| sentence.split.size}
longest_sentence = longest_sentence.strip
num_of_words = longest_sentence.split.size

puts "#{longest_sentence}"
puts "Containing #{num_of_words} words"
